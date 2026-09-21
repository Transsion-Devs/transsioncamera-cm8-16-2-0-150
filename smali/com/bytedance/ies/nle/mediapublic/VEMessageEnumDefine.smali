.class public final Lcom/bytedance/ies/nle/mediapublic/VEMessageEnumDefine;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/bytedance/ies/nle/mediapublic/VEMessageEnumDefine;

.field public static final VE_ERROR_COMPILE_FAILED_NO_SPACE_LEFT:I = 0x103a

.field public static final VE_ERROR_COMPILE_FAILED_OUT_OF_MEMORY:I = 0x103b

.field public static final VE_ERROR_VIDEO_COMPILE_FAILED:I = 0x1039

.field public static final VE_INFO_COMPILE_DONE:I = 0x1007

.field public static final VE_INFO_COMPILE_PROGRESS:I = 0x1009

.field public static final VE_INFO_FIRST_FRAME:I = 0x1001

.field public static final VE_INFO_PLAY_TIME:I = 0x1025

.field public static final VE_INFO_REFRESH:I = 0x1034

.field public static final VE_INFO_RELEAE_ENGINE_UNIT_RESOURCE_FAIL:I = 0x1031

.field public static final VE_INFO_RELEAE_ENGINE_UNIT_RESOURCE_SUCCESS:I = 0x1030

.field public static final VE_INFO_SEEK_DONE:I = 0x1005


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bytedance/ies/nle/mediapublic/VEMessageEnumDefine;

    invoke-direct {v0}, Lcom/bytedance/ies/nle/mediapublic/VEMessageEnumDefine;-><init>()V

    sput-object v0, Lcom/bytedance/ies/nle/mediapublic/VEMessageEnumDefine;->INSTANCE:Lcom/bytedance/ies/nle/mediapublic/VEMessageEnumDefine;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
