/* libOggFLAC - Free Lossless Audio Codec + Ogg library
 * Copyright (C) 2002,2003,2004  Josh Coalson
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * - Redistributions of source code must retain the above copyright
 * notice, this list of conditions and the following disclaimer.
 *
 * - Redistributions in binary form must reproduce the above copyright
 * notice, this list of conditions and the following disclaimer in the
 * documentation and/or other materials provided with the distribution.
 *
 * - Neither the name of the Xiph.org Foundation nor the names of its
 * contributors may be used to endorse or promote products derived from
 * this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * ``AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
 * A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE FOUNDATION OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
 * PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
 * LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
 * NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#ifndef OggFLAC__PRIVATE__OGG_ENCODER_ASPECT_H
#define OggFLAC__PRIVATE__OGG_ENCODER_ASPECT_H

#include <ogg/ogg.h>

#include "FLAC/ordinals.h"
#include "FLAC/stream_encoder.h" /* for FLAC__StreamEncoderWriteStatus */

typedef struct OggFLAC__OggEncoderAspect {
	/* these are storage for values that can be set through the API */
	long serial_number;

	/* these are for internal state related to Ogg encoding */
	ogg_stream_state stream_state;
	ogg_page page;
	FLAC__bool is_first_packet;
	FLAC__uint64 samples_written;
	/*
	 * This is sum total of 'bytes' that have come through the write
	 * callback proxy since init time.  It can be checked to get an
	 * un-Ogg-buffered current file position.
	 */
#if 0
	/*@@@@@@ not used, get rid of it? */
	FLAC__uint64 bytes_written;
#endif
} OggFLAC__OggEncoderAspect;

void OggFLAC__ogg_encoder_aspect_set_serial_number(OggFLAC__OggEncoderAspect *aspect, long value);
void OggFLAC__ogg_encoder_aspect_set_defaults(OggFLAC__OggEncoderAspect *aspect);
FLAC__bool OggFLAC__ogg_encoder_aspect_init(OggFLAC__OggEncoderAspect *aspect);
void OggFLAC__ogg_encoder_aspect_finish(OggFLAC__OggEncoderAspect *aspect);

typedef FLAC__StreamEncoderWriteStatus (*OggFLAC__OggEncoderAspectWriteCallbackProxy)(const void *encoder, const FLAC__byte buffer[], unsigned bytes, unsigned samples, unsigned current_frame, void *client_data);

FLAC__StreamEncoderWriteStatus OggFLAC__ogg_encoder_aspect_write_callback_wrapper(OggFLAC__OggEncoderAspect *aspect, const FLAC__uint64 total_samples_estimate, const FLAC__byte buffer[], unsigned bytes, unsigned samples, unsigned current_frame, OggFLAC__OggEncoderAspectWriteCallbackProxy write_callback, void *encoder, void *client_data);
#endif