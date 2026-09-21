.class public Lcom/ss/android/ttve/monitor/TEMonitorKeysType;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TEMonitorKeysType"

.field public static final TYPE_BOOL:I = 0x3

.field public static final TYPE_DOUBLE:I = 0x2

.field public static final TYPE_INT:I = 0x1

.field public static final TYPE_STRING:I

.field private static final sBoolKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sDoubleKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sIntKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sStringKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 26

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/ss/android/ttve/monitor/TEMonitorKeysType;->sIntKeys:Ljava/util/Set;

    .line 32
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/ss/android/ttve/monitor/TEMonitorKeysType;->sDoubleKeys:Ljava/util/Set;

    .line 34
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    sput-object v2, Lcom/ss/android/ttve/monitor/TEMonitorKeysType;->sStringKeys:Ljava/util/Set;

    .line 36
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    sput-object v3, Lcom/ss/android/ttve/monitor/TEMonitorKeysType;->sBoolKeys:Ljava/util/Set;

    .line 39
    const-string v4, "iesve_record_resolution"

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    const-string v4, "iesve_record_video_encode_type"

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
    const-string v4, "iesve_record_video_encode_mode"

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    const-string v4, "iesve_record_audio_encode_mode"

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    const-string v4, "iesve_record_frame_rate"

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    const-string v4, "iesve_record_video_frame_encode_time"

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    const-string v4, "iesve_record_start_time"

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    const-string v4, "iesve_record_stop_time"

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47
    const-string v4, "iesve_record_camera_type"

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    const-string v4, "iesve_record_camera_hw_level"

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
    const-string v4, "iesve_record_switch_camera_time"

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    const-string v4, "iesve_record_render_average_time"

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    const-string v4, "iesve_record_video_preview_resolution"

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    const-string v4, "iesve_record_preview_frame_rate"

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    const-string v4, "iesve_record_camera_frame_rate"

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    const-string v4, "iesve_record_concat_time"

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    const-string v4, "iesve_record_mediacodec_profile"

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    const-string v4, "iesve_use_new_record"

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    const-string v4, "iesve_video_decode_average_time"

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    const-string v4, "iesve_audio_decode_average_time"

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    const-string v4, "iesve_video_decode_mode"

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    const-string v4, "iesve_audio_decode_mode"

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    const-string v4, "iesve_seek_cost_ms"

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    const-string v4, "iesve_seek_cache_fit_rate"

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    const-string v4, "iesve_composition_resolution"

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    const-string v4, "iesve_composition_fps"

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    const-string v4, "iesve_composition_bit_rate"

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    const-string v4, "iesve_composition_file_duration"

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    const-string v4, "iesve_composition_file_size"

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    const-string v4, "iesve_composition_time"

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    const-string v4, "iesve_composition_video_encode_time"

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    const-string v4, "iesve_composition_audio_encode_time"

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    const-string v4, "iesve_composition_video_decode_time"

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    const-string v4, "iesve_composition_audio_decode_time"

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    const-string v4, "iesve_composition_video_encode_mode"

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    const-string v4, "iesve_composition_video_decode_mode"

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    const-string v4, "iesve_composition_audio_encode_mode"

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    const-string v4, "iesve_composition_audio_decode_mode"

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    const-string v4, "iesve_import_source_file_resolution"

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    const-string v4, "iesve_import_crop_file_resolution"

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    const-string v4, "iesve_import_generate_thumbnail_time"

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    const-string v4, "iesve_import_crop_time"

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    const-string v4, "iesve_import_crop_file_duration"

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    const-string v4, "iesve_import_source_file_bitrate"

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    const-string v4, "iesve_import_crop_file_bitrate"

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    const-string v4, "iesve_import_source_file_duration"

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    const-string v4, "completed"

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    const-string v5, "iesve_processor_frame_count_drc"

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 87
    const-string v5, "iesve_processor_sample_size_drc"

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 88
    const-string v5, "iesve_processor_total_process_cost_drc"

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 89
    const-string v5, "iesve_processor_effect_process_cost_drc"

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 90
    const-string v5, "iesve_processor_frame_count_cleaner"

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 91
    const-string v5, "iesve_processor_sample_size_cleaner"

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 92
    const-string v5, "iesve_processor_total_process_cost_cleaner"

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 93
    const-string v5, "iesve_processor_effect_process_cost_cleaner"

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    const-string v5, "iesve_processor_frame_count_eq"

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    const-string v5, "iesve_processor_sample_size_eq"

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 96
    const-string v5, "iesve_processor_total_process_cost_eq"

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 97
    const-string v5, "iesve_processor_effect_process_cost_eq"

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    const-string v5, "iesve_processor_frame_count_reverb"

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    const-string v5, "iesve_processor_sample_size_reverb"

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    const-string v5, "iesve_processor_total_process_cost_reverb"

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 101
    const-string v5, "iesve_processor_effect_process_cost_reverb"

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    const-string v5, "iesve_processor_frame_count_reverb2"

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 103
    const-string v5, "iesve_processor_sample_size_reverb2"

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 104
    const-string v5, "iesve_processor_total_process_cost_reverb2"

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 105
    const-string v5, "iesve_processor_effect_process_cost_reverb2"

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    const-string v5, "iesve_processor_frame_count_volume"

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 107
    const-string v5, "iesve_processor_sample_size_volume"

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 108
    const-string v5, "iesve_processor_total_process_cost_volume"

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 109
    const-string v5, "iesve_processor_effect_process_cost_volume"

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 110
    const-string v5, "iesve_processor_frame_count_limiter"

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 111
    const-string v5, "iesve_processor_sample_size_limiter"

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 112
    const-string v5, "iesve_processor_processor_total_process_cost_limiter"

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 113
    const-string v5, "iesve_effect_process_cost_limiter"

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 114
    const-string v5, "te_preview_camera_resolution"

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 115
    const-string v5, "te_preview_camera_zoom"

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 116
    const-string v5, "te_record_camera_direction"

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 117
    const-string v5, "te_record_camera_type"

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 118
    const-string v6, "te_record_switch_camera_time"

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 119
    const-string v7, "te_record_start_preview_ret"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 120
    const-string v7, "te_record_preview_init_ret"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 121
    const-string v7, "te_record_preview_init_time"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 122
    const-string v7, "te_record_preview_destroy_time"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 123
    const-string v7, "te_preview_first_frame_render_time"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    const-string v7, "te_preview_video_preview_resolution"

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 125
    const-string v7, "te_preview_first_frame_screen_time"

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 126
    const-string v7, "te_preview_switch_camera_screen_time"

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 127
    const-string v7, "te_record_preview_frame_rate"

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 128
    const-string v8, "te_record_camera_frame_rate"

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 129
    const-string v9, "te_preview_preview_frame_rate"

    invoke-interface {v1, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 130
    const-string v9, "te_record_init_egl_delay_camera_time"

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 131
    const-string v9, "te_record_effect_render"

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 132
    const-string v9, "te_record_lag_scene"

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 133
    const-string v9, "te_record_is_hw_decoder"

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 134
    const-string v9, "te_record_decoder_codec_id"

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 135
    const-string v9, "te_record_generate_extra_data_cost"

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 136
    const-string v9, "te_record_packet_count_before_extra_data"

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 137
    const-string v9, "te_record_is_stop_before_extra_data"

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 138
    const-string v9, "te_record_start_record_ret"

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 139
    const-string v9, "te_record_extract_frame_num"

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 140
    const-string v9, "te_record_resolution"

    invoke-interface {v2, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 141
    const-string v10, "te_preview_preview2_frame_rate"

    invoke-interface {v1, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 142
    const-string v10, "te_record_frame_rate"

    invoke-interface {v1, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 143
    const-string v11, "te_record_start_time"

    invoke-interface {v1, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 144
    const-string v12, "te_record_stop_time"

    invoke-interface {v1, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 145
    const-string v13, "te_record_lag_max_num"

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 146
    const-string v13, "te_record_lag_count"

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 147
    const-string v13, "te_record_type"

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 148
    const-string v13, "te_record_speed"

    invoke-interface {v1, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 149
    const-string v13, "te_record_export_time"

    invoke-interface {v1, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 150
    const-string v13, "te_record_segment_time"

    invoke-interface {v1, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 151
    const-string v13, "te_record_err_code"

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 152
    const-string v13, "te_record_gl_err_code"

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 153
    const-string v13, "te_record_video_soft_encode_acc_eglimage"

    invoke-interface {v2, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 154
    const-string v13, "te_record_video_use_eglimage"

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 155
    const-string v13, "te_record_instance_type"

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 156
    const-string v13, "te_record_sync_ret"

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 157
    const-string v13, "te_record_sync_detail"

    invoke-interface {v2, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 158
    const-string v13, "te_record_low_latency"

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 159
    const-string v13, "te_record_hard_encode_init_ret"

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 160
    const-string v13, "te_record_hard_encode_init_time"

    invoke-interface {v1, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 161
    const-string v13, "te_record_hard_encode_destroy_time"

    invoke-interface {v1, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    const-string v13, "te_record_video_encode_type"

    invoke-interface {v2, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 163
    const-string v14, "te_record_video_encode_mode"

    invoke-interface {v0, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 164
    const-string v15, "te_record_audio_encode_mode"

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v4

    .line 165
    const-string v4, "te_record_video_frame_encode_time"

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v17, v8

    .line 166
    const-string v8, "te_record_video_encode_gop"

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 167
    const-string v8, "te_record_video_encode_codec_type"

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 168
    const-string v8, "te_record_all_frame_rate"

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 169
    const-string v8, "te_mediacodec_profile"

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 170
    const-string v8, "te_record_mediacodec_rate_control"

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 171
    const-string v8, "te_record_hard_encode_ret"

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 172
    const-string v8, "te_record_hard_encode_bitrate"

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 173
    const-string v8, "te_record_beauty_type"

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 174
    const-string v8, "te_record_smooth_intensity"

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 175
    const-string v8, "te_record_brighten_intensity"

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 176
    const-string v8, "te_record_filter_id1"

    invoke-interface {v2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 177
    const-string v8, "te_record_filter_id2"

    invoke-interface {v2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 178
    const-string v8, "te_record_sticker_id"

    invoke-interface {v2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 179
    const-string v8, "te_record_eye_intensity"

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 180
    const-string v8, "te_record_cheek_intensity"

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 181
    const-string v8, "te_record_lab_algorithm"

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 182
    const-string v8, "te_record_render_average_time"

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v18, v7

    .line 183
    const-string v7, "te_record_hd_capture_time"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 184
    const-string v7, "te_record_shot_hd_screen_time"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 185
    const-string v7, "te_record_shot_screen_time"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 186
    const-string v7, "te_record_preview_radio_switch_time"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 187
    const-string v7, "te_record_shot_screen_without_effect_ret"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 188
    const-string v7, "te_record_shot_screen_with_effect_ret"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 189
    const-string v7, "te_record_audio_mic_start_info"

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 190
    const-string v7, "te_record_audio_mic_start_ret"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 191
    const-string v7, "te_record_audio_latency"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 192
    const-string v7, "te_record_play_first_timestamp"

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 193
    const-string v7, "te_record_audio_start_record_ret"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 194
    const-string v7, "te_record_audio_start_play_ret"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 195
    const-string v7, "te_record_audio_start_record_time"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 196
    const-string v7, "te_record_audio_stop_record_time"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 197
    const-string v7, "te_record_audio_release_record_time"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 198
    const-string v7, "te_record_audio_first_frame"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 199
    const-string v7, "te_record_audio_play_time_strs"

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 200
    const-string v7, "te_record_audio_mic_type"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 201
    const-string v7, "te_record_audio_mic_init_ret"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 202
    const-string v7, "te_record_audio_mic_running_err"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 203
    const-string v7, "te_record_audio_mic_sample_rate"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 204
    const-string v7, "te_record_audio_mic_frame_per_buffer"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 205
    const-string v7, "te_record_audio_earback_type"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 206
    const-string v7, "te_record_audio_earback_stable_est"

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 207
    const-string v7, "te_record_audio_earback_continuity_est"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 208
    const-string v7, "te_record_audio_mic_delay"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 209
    const-string v7, "te_record_audio_mic_delay_ret"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 210
    const-string v7, "te_record_mode"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 211
    const-string v7, "te_record_audio_device"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 212
    const-string v7, "te_record_camera_sensor_interval_variance"

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 213
    const-string v7, "te_record_camera_sensor_interval_mean"

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 214
    const-string v7, "te_record_camera_sensor_interval_range"

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 215
    const-string v7, "te_record_camera_frame_interval_variance"

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 216
    const-string v7, "te_record_camera_frame_interval_mean"

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 217
    const-string v7, "te_record_camera_frame_interval_range"

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 218
    const-string v7, "te_record_preview_frame_interval_variance"

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 219
    const-string v7, "te_record_preview_frame_interval_mean"

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 220
    const-string v7, "te_record_preview_frame_interval_range"

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 221
    const-string v7, "te_record_encode_frame_interval_variance"

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 222
    const-string v7, "te_record_encode_frame_interval_mean"

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 223
    const-string v7, "te_record_encode_frame_interval_range"

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 224
    const-string v7, "te_record_preencode_frame_interval_variance"

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 225
    const-string v7, "te_record_preencode_frame_interval_mean"

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 226
    const-string v7, "te_record_preencode_frame_interval_range"

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 227
    const-string v7, "te_titan_engine"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 228
    const-string v7, "te_iso_status"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 229
    const-string v7, "te_record_concat_ret"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 230
    const-string v7, "te_record_concat_time"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v19, v7

    .line 231
    const-string v7, "te_record_compose_vid"

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 232
    const-string v7, "te_record_camera_sharpness"

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 233
    const-string v7, "te_record_camera_sharpness_difference"

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 234
    const-string v7, "te_record_enter_virtual_memory_size"

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 235
    const-string v7, "te_record_leave_virtual_memory_size"

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 236
    const-string v7, "te_record_lens_onekey_enhance_scene"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 237
    const-string v7, "te_record_lens_onekey_enhance_result"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 238
    const-string v7, "te_record_lens_onekey_enhance_iso"

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 239
    const-string v7, "te_record_lens_onekey_enhance_maxiso"

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 240
    const-string v7, "te_record_lens_onekey_enhance_miniso"

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 241
    const-string v7, "te_sensor_type_gyroscope_exist"

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 242
    const-string v7, "te_sensor_type_game_rotation_vector_exist"

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 243
    const-string v7, "te_sensor_type_rotation_vector_exist"

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 244
    const-string v7, "te_sensor_type_gravity_exist"

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 245
    const-string v7, "te_sensor_type_accelerometer_exist"

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 246
    const-string v3, "te_sensor_type_gyroscope_name"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 247
    const-string v3, "te_sensor_type_game_rotation_vector_name"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 248
    const-string v3, "te_sensor_type_rotation_vector_name"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 249
    const-string v3, "te_sensor_type_gravity_name"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 250
    const-string v3, "te_sensor_type_accelerometer_name"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 251
    const-string v3, "te_edit_first_frame_time"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 252
    const-string v3, "te_edit_reverse_time"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 253
    const-string v3, "te_edit_video_decode_average_time"

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 254
    const-string v3, "te_edit_video_decode_mode"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 255
    const-string v3, "te_edit_audio_decode_average_time"

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 256
    const-string v3, "te_edit_audio_decode_mode"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 257
    const-string v3, "te_edit_err_code"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 258
    const-string v3, "te_edit_import_generate_thumbnail_time"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 259
    const-string v3, "te_edit_thumbnail_resolution"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 260
    const-string v3, "te_composition_resolution"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 261
    const-string v7, "te_composition_fps"

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v20, v7

    .line 262
    const-string v7, "te_composition_bit_rate"

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v21, v7

    .line 263
    const-string v7, "te_composition_file_duration"

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v22, v7

    .line 264
    const-string v7, "te_composition_file_size"

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v23, v7

    .line 265
    const-string v7, "te_composition_time"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v24, v7

    .line 266
    const-string v7, "te_composition_video_encode_time"

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v25, v7

    .line 267
    const-string v7, "te_composition_audio_encode_time"

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 268
    const-string v7, "te_composition_video_decode_time"

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 269
    const-string v7, "te_composition_audio_decode_time"

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 270
    const-string v7, "te_composition_video_encode_mode"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 271
    const-string v7, "te_composition_video_decode_mode"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 272
    const-string v7, "te_composition_audio_encode_mode"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 273
    const-string v7, "te_composition_audio_decode_mode"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 274
    const-string v7, "te_composition_page_mode"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 275
    const-string v7, "te_composition_effect_add"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 276
    const-string v7, "te_composition_info_sticker_add"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 277
    const-string v7, "te_composition_effect_json"

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 278
    const-string v7, "te_composition_info_sticker_json"

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 279
    const-string v7, "te_composition_text_add"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 280
    const-string v7, "te_composition_brush_add"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 281
    const-string v7, "te_composition_filter_id"

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 282
    const-string v7, "te_composition_watermark_add"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 283
    const-string v7, "te_composition_end_watermark_add"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 284
    const-string v7, "te_composition_time_filter_type"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 285
    const-string v7, "te_composition_err_code"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 286
    const-string v7, "te_composition_video_sw_crf"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 287
    const-string v7, "te_composition_video_sw_maxrate"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 288
    const-string v7, "te_composition_video_sw_preset"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 289
    const-string v7, "te_composition_video_gop"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 290
    const-string v7, "te_composition_tran_type"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 291
    const-string v7, "te_composition_gif_ret"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 292
    const-string v7, "te_composition_audio_ret"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 293
    const-string v7, "te_enable_titan_auto_test_log"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 294
    const-string v7, "te_edit_playback_fps"

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 295
    const-string v7, "te_edit_save_frame_without_effect_ret"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 296
    const-string v7, "te_edit_get_frame_with_effect_ret"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 297
    const-string v7, "te_edit_get_audio_frame_ret"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 298
    const-string v7, "te_edit_enter_virtual_memory_size"

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 299
    const-string v7, "te_edit_leave_virtual_memory_size"

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 300
    const-string v7, "te_composition_enter_virtual_memory_size"

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 301
    const-string v7, "te_composition_leave_virtual_memory_size"

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 302
    invoke-interface {v2, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 303
    invoke-interface {v2, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 304
    invoke-interface {v0, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 305
    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 306
    invoke-interface {v1, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 307
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 308
    invoke-interface {v1, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 309
    invoke-interface {v1, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 310
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 311
    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 312
    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 313
    const-string v4, "te_record_video_preview_resolution"

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, v18

    .line 314
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, v17

    .line 315
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, v19

    .line 316
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 317
    const-string v4, "te_record_frame_cnt_bef_enq"

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 318
    const-string v4, "te_record_frame_cnt_aft_enq"

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 319
    const-string v4, "te_record_frame_cnt_bef_enc"

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 320
    const-string v4, "te_record_frame_cnt_aft_wrt"

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 321
    const-string v4, "te_record_sys_best_codec"

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 322
    const-string v4, "te_video_decode_average_time"

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 323
    const-string v4, "te_audio_decode_average_time"

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 324
    const-string v4, "te_video_decode_mode"

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 325
    const-string v4, "te_audio_decode_mode"

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 326
    const-string v4, "te_editor_drop_frame_rate"

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 327
    const-string v4, "te_editor_preview_frame_rate"

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 328
    const-string v4, "te_editor_skip_processor"

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 329
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v20

    .line 330
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v21

    .line 331
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v22

    .line 332
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v23

    .line 333
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v24

    .line 334
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v25

    .line 335
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 336
    const-string v3, "te_composition_audio_encode_time"

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 337
    const-string v3, "te_composition_video_decode_time"

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 338
    const-string v3, "te_composition_audio_decode_time"

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 339
    const-string v3, "te_composition_video_encode_mode"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 340
    const-string v3, "te_composition_video_decode_mode"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 341
    const-string v3, "te_composition_audio_encode_mode"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 342
    const-string v3, "te_composition_audio_decode_mode"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 343
    const-string v3, "te_composition_pixel_format"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 344
    const-string v3, "te_composition_page_mode"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 345
    const-string v3, "te_composition_audio_hw_encoder_extradata"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 346
    const-string v3, "te_composition_audio_create_hw_encoder"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 347
    const-string v3, "te_composition_audio_hw_switch_sw"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 348
    const-string v3, "te_composition_audio_dual_asc_distribution"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 349
    const-string v3, "te_import_source_file_resolution"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 350
    const-string v3, "te_import_crop_file_resolution"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 351
    const-string v2, "te_import_generate_thumbnail_time"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 352
    const-string v2, "te_import_crop_time"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 353
    const-string v2, "te_import_crop_file_duration"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 354
    const-string v2, "te_import_source_file_bitrate"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 355
    const-string v2, "te_import_crop_file_bitrate"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 356
    const-string v2, "te_import_source_file_duration"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 357
    const-string v1, "te_composition_video_sw_crf"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 358
    const-string v1, "te_composition_video_sw_maxrate"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 359
    const-string v1, "te_composition_video_sw_preset"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 360
    const-string v1, "te_composition_video_gop"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v16

    .line 361
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getType(Ljava/lang/String;)I
    .registers 2

    .line 367
    sget-object v0, Lcom/ss/android/ttve/monitor/TEMonitorKeysType;->sIntKeys:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x1

    return p0

    .line 370
    :cond_a
    sget-object v0, Lcom/ss/android/ttve/monitor/TEMonitorKeysType;->sBoolKeys:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 p0, 0x3

    return p0

    .line 373
    :cond_14
    sget-object v0, Lcom/ss/android/ttve/monitor/TEMonitorKeysType;->sDoubleKeys:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x2

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method
