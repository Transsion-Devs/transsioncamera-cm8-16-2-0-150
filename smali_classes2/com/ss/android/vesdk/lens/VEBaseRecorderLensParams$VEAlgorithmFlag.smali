.class public Lcom/ss/android/vesdk/lens/VEBaseRecorderLensParams$VEAlgorithmFlag;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/lens/VEBaseRecorderLensParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VEAlgorithmFlag"
.end annotation


# static fields
.field public static final VELensAlgorithm_ALG_AFTER_EFFECT:I = 0x7

.field public static final VELensAlgorithm_ALG_AI_INSERT_FRAME:I = 0xe

.field public static final VELensAlgorithm_ALG_ASF:I = 0x18

.field public static final VELensAlgorithm_ALG_CAMERA_MOTION:I = 0x5

.field public static final VELensAlgorithm_ALG_COREML_AGING:I = 0x8

.field public static final VELensAlgorithm_ALG_COREML_POSTERSR:I = 0x9

.field public static final VELensAlgorithm_ALG_DARK_LIGHT_ENHANCEMENT:I = 0x1

.field public static final VELensAlgorithm_ALG_DEARTIFACT:I = 0x12

.field public static final VELensAlgorithm_ALG_DIM_LIGHT_DETECTION:I = 0xf

.field public static final VELensAlgorithm_ALG_DISTORTION_FREE:I = 0x6

.field public static final VELensAlgorithm_ALG_FACE_DETECT:I = 0x19

.field public static final VELensAlgorithm_ALG_HDRVIDEO:I = 0x13

.field public static final VELensAlgorithm_ALG_HDR_DETECT:I = 0x3

.field public static final VELensAlgorithm_ALG_HDR_RAW:I = 0x2

.field public static final VELensAlgorithm_ALG_IMAGESR_ASR:I = 0x4

.field public static final VELensAlgorithm_ALG_IMAGE_VRSR:I = 0x17

.field public static final VELensAlgorithm_ALG_LUMA_DETECT:I = 0x1b

.field public static final VELensAlgorithm_ALG_METAL_GRAMMA_BLUR:I = 0xa

.field public static final VELensAlgorithm_ALG_ONEKEY_PROCESS:I = 0x1c

.field public static final VELensAlgorithm_ALG_RHYTHMIC_MOTION:I = 0x1d

.field public static final VELensAlgorithm_ALG_ROI:I = 0x0

.field public static final VELensAlgorithm_ALG_TAINT_SCENE_DETECT:I = 0x15

.field public static final VELensAlgorithm_ALG_VFI:I = 0x14

.field public static final VELensAlgorithm_ALG_VIDEO_ANTI_SHAKE:I = 0x1a

.field public static final VELensAlgorithm_ALG_VIDEO_DEBLUR:I = 0x11

.field public static final VELensAlgorithm_ALG_VIDEO_DENOISE:I = 0x10

.field public static final VELensAlgorithm_ALG_VIDEO_NNSR:I = 0xb

.field public static final VELensAlgorithm_ALG_VIDEO_SR:I = 0xc

.field public static final VELensAlgorithm_ALG_VIDEO_STAB:I = 0x16

.field public static final VELensAlgorithm_ALG_VIDEO_VRSR:I = 0xd


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/lens/VEBaseRecorderLensParams;


# direct methods
.method public constructor <init>(Lcom/ss/android/vesdk/lens/VEBaseRecorderLensParams;)V
    .registers 2

    .line 11
    iput-object p1, p0, Lcom/ss/android/vesdk/lens/VEBaseRecorderLensParams$VEAlgorithmFlag;->this$0:Lcom/ss/android/vesdk/lens/VEBaseRecorderLensParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
