.class public final synthetic Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt$WhenMappings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I

.field public static final synthetic $EnumSwitchMapping$10:[I

.field public static final synthetic $EnumSwitchMapping$11:[I

.field public static final synthetic $EnumSwitchMapping$12:[I

.field public static final synthetic $EnumSwitchMapping$13:[I

.field public static final synthetic $EnumSwitchMapping$14:[I

.field public static final synthetic $EnumSwitchMapping$15:[I

.field public static final synthetic $EnumSwitchMapping$16:[I

.field public static final synthetic $EnumSwitchMapping$17:[I

.field public static final synthetic $EnumSwitchMapping$18:[I

.field public static final synthetic $EnumSwitchMapping$19:[I

.field public static final synthetic $EnumSwitchMapping$2:[I

.field public static final synthetic $EnumSwitchMapping$20:[I

.field public static final synthetic $EnumSwitchMapping$3:[I

.field public static final synthetic $EnumSwitchMapping$4:[I

.field public static final synthetic $EnumSwitchMapping$5:[I

.field public static final synthetic $EnumSwitchMapping$6:[I

.field public static final synthetic $EnumSwitchMapping$7:[I

.field public static final synthetic $EnumSwitchMapping$8:[I

.field public static final synthetic $EnumSwitchMapping$9:[I


# direct methods
.method static constructor <clinit>()V
    .registers 12

    invoke-static {}, Lcom/ss/android/vesdk/VEEditor$VEState;->values()[Lcom/ss/android/vesdk/VEEditor$VEState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/ss/android/vesdk/VEEditor$VEState;->PREPARED:Lcom/ss/android/vesdk/VEEditor$VEState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/ss/android/vesdk/VEEditor$VEState;->STARTED:Lcom/ss/android/vesdk/VEEditor$VEState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v1, Lcom/ss/android/vesdk/VEEditor$VEState;->PAUSED:Lcom/ss/android/vesdk/VEEditor$VEState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    sget-object v1, Lcom/ss/android/vesdk/VEEditor$VEState;->SEEKING:Lcom/ss/android/vesdk/VEEditor$VEState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v5, 0x4

    aput v5, v0, v1

    sget-object v1, Lcom/ss/android/vesdk/VEEditor$VEState;->STOPPED:Lcom/ss/android/vesdk/VEEditor$VEState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v6, 0x5

    aput v6, v0, v1

    sget-object v1, Lcom/ss/android/vesdk/VEEditor$VEState;->IDLE:Lcom/ss/android/vesdk/VEEditor$VEState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v7, 0x6

    aput v7, v0, v1

    sput-object v0, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;->values()[Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;->PREPARED:Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;->STARTED:Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;->PAUSED:Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;->SEEKING:Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1

    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;->STOPPED:Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v6, v0, v1

    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;->IDLE:Lcom/bytedance/ies/nle/editor_jni/NLEPlayerState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v7, v0, v1

    sput-object v0, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLESeekFlag;->values()[Lcom/bytedance/ies/nle/editor_jni/NLESeekFlag;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/NLESeekFlag;->EDITOR_SEEK_FLAG_LastSeek:Lcom/bytedance/ies/nle/editor_jni/NLESeekFlag;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/NLESeekFlag;->EDITOR_SEEK_FLAG_OnGoing:Lcom/bytedance/ies/nle/editor_jni/NLESeekFlag;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sput-object v0, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_STANDARD;->values()[Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_STANDARD;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_STANDARD;->ENCODE_STANDARD_H264:Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_STANDARD;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_STANDARD;->ENCODE_STANDARD_ByteVC1:Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_STANDARD;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_STANDARD;->ENCODE_STANDARD_MPEG4:Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_STANDARD;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sput-object v0, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt$WhenMappings;->$EnumSwitchMapping$3:[I

    invoke-static {}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;->values()[Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;->ENCODE_STANDARD_H264:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;->ENCODE_STANDARD_ByteVC1:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v1, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;->ENCODE_STANDARD_MPEG4:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sput-object v0, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt$WhenMappings;->$EnumSwitchMapping$4:[I

    invoke-static {}, Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;->values()[Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;->ENCODE_PROFILE_UNKNOWN:Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;->ENCODE_PROFILE_BASELINE:Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v1, Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;->ENCODE_PROFILE_HIGH:Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v1, Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;->ENCODE_PROFILE_MAIN:Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1

    sput-object v0, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt$WhenMappings;->$EnumSwitchMapping$5:[I

    invoke-static {}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;->values()[Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;->ENCODE_PROFILE_UNKNOWN:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;->ENCODE_PROFILE_BASELINE:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v1, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;->ENCODE_PROFILE_HIGH:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v1, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;->ENCODE_PROFILE_MAIN:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1

    sput-object v0, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt$WhenMappings;->$EnumSwitchMapping$6:[I

    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PROFILE;->values()[Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PROFILE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PROFILE;->ENCODE_PROFILE_UNKNOWN:Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PROFILE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PROFILE;->ENCODE_PROFILE_BASELINE:Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PROFILE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PROFILE;->ENCODE_PROFILE_HIGH:Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PROFILE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PROFILE;->ENCODE_PROFILE_MAIN:Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PROFILE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1

    sput-object v0, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt$WhenMappings;->$EnumSwitchMapping$7:[I

    invoke-static {}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;->values()[Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;->ENCODE_BITRATE_ABR:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;->ENCODE_BITRATE_CRF:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v1, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;->ENCODE_BITRATE_QP:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v1, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;->ENCODE_BITRATE_VBR:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1

    sput-object v0, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt$WhenMappings;->$EnumSwitchMapping$8:[I

    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_BITRATE_MODE;->values()[Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_BITRATE_MODE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_BITRATE_MODE;->ENCODE_BITRATE_ABR:Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_BITRATE_MODE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_BITRATE_MODE;->ENCODE_BITRATE_CRF:Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_BITRATE_MODE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_BITRATE_MODE;->ENCODE_BITRATE_QP:Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_BITRATE_MODE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_BITRATE_MODE;->ENCODE_BITRATE_VBR:Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_BITRATE_MODE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1

    sput-object v0, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt$WhenMappings;->$EnumSwitchMapping$9:[I

    invoke-static {}, Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;->values()[Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;->ENCODE_LEVEL_FAST:Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;->ENCODE_LEVEL_FASTER:Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v1, Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;->ENCODE_LEVEL_MEDIUM:Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v1, Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;->ENCODE_LEVEL_PLACEBO:Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1

    sget-object v1, Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;->ENCODE_LEVEL_SLOW:Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v6, v0, v1

    sget-object v1, Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;->ENCODE_LEVEL_SLOWER:Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v7, v0, v1

    sget-object v1, Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;->ENCODE_LEVEL_SUPERFAST:Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v8, 0x7

    aput v8, v0, v1

    sget-object v1, Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;->ENCODE_LEVEL_ULTRAFAST:Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v9, 0x8

    aput v9, v0, v1

    sget-object v1, Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;->ENCODE_LEVEL_VERYFAST:Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v10, 0x9

    aput v10, v0, v1

    sget-object v1, Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;->ENCODE_LEVEL_VERYSLOW:Lcom/ss/android/vesdk/settings/VEVideoEncodePreset;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v11, 0xa

    aput v11, v0, v1

    sput-object v0, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt$WhenMappings;->$EnumSwitchMapping$10:[I

    invoke-static {}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;->values()[Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;->ENCODE_LEVEL_FAST:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;->ENCODE_LEVEL_FASTER:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v1, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;->ENCODE_LEVEL_MEDIUM:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v1, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;->ENCODE_LEVEL_PLACEBO:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1

    sget-object v1, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;->ENCODE_LEVEL_SLOW:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v6, v0, v1

    sget-object v1, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;->ENCODE_LEVEL_SLOWER:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v7, v0, v1

    sget-object v1, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;->ENCODE_LEVEL_SUPERFAST:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v8, v0, v1

    sget-object v1, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;->ENCODE_LEVEL_ULTRAFAST:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v9, v0, v1

    sget-object v1, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;->ENCODE_LEVEL_VERYFAST:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v10, v0, v1

    sget-object v1, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;->ENCODE_LEVEL_VERYSLOW:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v11, v0, v1

    sput-object v0, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt$WhenMappings;->$EnumSwitchMapping$11:[I

    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;->values()[Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;->ENCODE_LEVEL_FAST:Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;->ENCODE_LEVEL_FASTER:Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;->ENCODE_LEVEL_MEDIUM:Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;->ENCODE_LEVEL_PLACEBO:Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1

    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;->ENCODE_LEVEL_SLOW:Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v6, v0, v1

    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;->ENCODE_LEVEL_SLOWER:Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v7, v0, v1

    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;->ENCODE_LEVEL_SUPERFAST:Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v8, v0, v1

    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;->ENCODE_LEVEL_ULTRAFAST:Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v9, v0, v1

    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;->ENCODE_LEVEL_VERYFAST:Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v10, v0, v1

    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;->ENCODE_LEVEL_VERYSLOW:Lcom/bytedance/ies/nle/editor_jni/NLE_ENCODE_PRESET;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v11, v0, v1

    sput-object v0, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt$WhenMappings;->$EnumSwitchMapping$12:[I

    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEWaterMarkPosition;->values()[Lcom/bytedance/ies/nle/editor_jni/NLEWaterMarkPosition;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/NLEWaterMarkPosition;->BL:Lcom/bytedance/ies/nle/editor_jni/NLEWaterMarkPosition;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/NLEWaterMarkPosition;->BR:Lcom/bytedance/ies/nle/editor_jni/NLEWaterMarkPosition;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/NLEWaterMarkPosition;->TL:Lcom/bytedance/ies/nle/editor_jni/NLEWaterMarkPosition;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/NLEWaterMarkPosition;->TL_BR:Lcom/bytedance/ies/nle/editor_jni/NLEWaterMarkPosition;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1

    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/NLEWaterMarkPosition;->TR:Lcom/bytedance/ies/nle/editor_jni/NLEWaterMarkPosition;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v6, v0, v1

    sput-object v0, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt$WhenMappings;->$EnumSwitchMapping$13:[I

    invoke-static {}, Lcom/ss/android/vesdk/VEWaterMarkPosition;->values()[Lcom/ss/android/vesdk/VEWaterMarkPosition;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/ss/android/vesdk/VEWaterMarkPosition;->BL:Lcom/ss/android/vesdk/VEWaterMarkPosition;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/ss/android/vesdk/VEWaterMarkPosition;->BR:Lcom/ss/android/vesdk/VEWaterMarkPosition;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v1, Lcom/ss/android/vesdk/VEWaterMarkPosition;->TL:Lcom/ss/android/vesdk/VEWaterMarkPosition;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v1, Lcom/ss/android/vesdk/VEWaterMarkPosition;->TL_BR:Lcom/ss/android/vesdk/VEWaterMarkPosition;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1

    sget-object v1, Lcom/ss/android/vesdk/VEWaterMarkPosition;->TR:Lcom/ss/android/vesdk/VEWaterMarkPosition;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v6, v0, v1

    sput-object v0, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt$WhenMappings;->$EnumSwitchMapping$14:[I

    invoke-static {}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$COMPILE_TYPE;->values()[Lcom/ss/android/vesdk/VEVideoEncodeSettings$COMPILE_TYPE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/ss/android/vesdk/VEVideoEncodeSettings$COMPILE_TYPE;->COMPILE_TYPE_MP4:Lcom/ss/android/vesdk/VEVideoEncodeSettings$COMPILE_TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/ss/android/vesdk/VEVideoEncodeSettings$COMPILE_TYPE;->COMPILE_TYPE_GIF:Lcom/ss/android/vesdk/VEVideoEncodeSettings$COMPILE_TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v1, Lcom/ss/android/vesdk/VEVideoEncodeSettings$COMPILE_TYPE;->COMPILE_TYPE_HIGH_GIF:Lcom/ss/android/vesdk/VEVideoEncodeSettings$COMPILE_TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sput-object v0, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt$WhenMappings;->$EnumSwitchMapping$15:[I

    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLE_COMPILE_TYPE;->values()[Lcom/bytedance/ies/nle/editor_jni/NLE_COMPILE_TYPE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/NLE_COMPILE_TYPE;->COMPILE_TYPE_MP4:Lcom/bytedance/ies/nle/editor_jni/NLE_COMPILE_TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/NLE_COMPILE_TYPE;->COMPILE_TYPE_GIF:Lcom/bytedance/ies/nle/editor_jni/NLE_COMPILE_TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/NLE_COMPILE_TYPE;->COMPILE_TYPE_HIGH_GIF:Lcom/bytedance/ies/nle/editor_jni/NLE_COMPILE_TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sput-object v0, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt$WhenMappings;->$EnumSwitchMapping$16:[I

    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLE_GET_FRAME_FLAGS;->values()[Lcom/bytedance/ies/nle/editor_jni/NLE_GET_FRAME_FLAGS;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/NLE_GET_FRAME_FLAGS;->NLE_GET_FRAMES_MODE_NORMAL:Lcom/bytedance/ies/nle/editor_jni/NLE_GET_FRAME_FLAGS;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/NLE_GET_FRAME_FLAGS;->NLE_GET_FRAMES_MODE_NOEFFECT:Lcom/bytedance/ies/nle/editor_jni/NLE_GET_FRAME_FLAGS;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sput-object v0, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt$WhenMappings;->$EnumSwitchMapping$17:[I

    invoke-static {}, Lcom/ss/android/vesdk/ROTATE_DEGREE;->values()[Lcom/ss/android/vesdk/ROTATE_DEGREE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/ss/android/vesdk/ROTATE_DEGREE;->ROTATE_90:Lcom/ss/android/vesdk/ROTATE_DEGREE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/ss/android/vesdk/ROTATE_DEGREE;->ROTATE_180:Lcom/ss/android/vesdk/ROTATE_DEGREE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v1, Lcom/ss/android/vesdk/ROTATE_DEGREE;->ROTATE_270:Lcom/ss/android/vesdk/ROTATE_DEGREE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sput-object v0, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt$WhenMappings;->$EnumSwitchMapping$18:[I

    invoke-static {}, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;->values()[Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;->VIDEO_OUT_RATIO_1_1:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;->VIDEO_OUT_RATIO_4_3:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v1, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;->VIDEO_OUT_RATIO_3_4:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v1, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;->VIDEO_OUT_RATIO_16_9:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1

    sget-object v1, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;->VIDEO_OUT_RATIO_9_16:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v6, v0, v1

    sput-object v0, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt$WhenMappings;->$EnumSwitchMapping$19:[I

    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->values()[Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->VIDEO:Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/bytedance/ies/nle/editor_jni/NLETrackType;->AUDIO:Lcom/bytedance/ies/nle/editor_jni/NLETrackType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sput-object v0, Lcom/bytedance/ies/nle/mediapublic/util/NLE2VEUtilsKt$WhenMappings;->$EnumSwitchMapping$20:[I

    return-void
.end method
