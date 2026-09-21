.class public Lcom/ss/android/vesdk/VELensAlgorithm$VEAlgorithmFlag;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VELensAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VEAlgorithmFlag"
.end annotation


# static fields
.field public static final VELensAlgorithm_ALG_AI_INSERT_FRAME:I = 0x8

.field public static final VELensAlgorithm_ALG_COREML_POSTERSR:I = 0x3

.field public static final VELensAlgorithm_ALG_DARK_LIGHT_ENHANCEMENT:I = 0x1

.field public static final VELensAlgorithm_ALG_DEARTIFACT:I = 0xc

.field public static final VELensAlgorithm_ALG_DIM_LIGHT_DETECTION:I = 0x9

.field public static final VELensAlgorithm_ALG_HDRVIDEO:I = 0xd

.field public static final VELensAlgorithm_ALG_HDR_DETECT:I = 0x2

.field public static final VELensAlgorithm_ALG_METAL_GRAMMA_BLUR:I = 0x4

.field public static final VELensAlgorithm_ALG_ROI:I = 0x0

.field public static final VELensAlgorithm_ALG_TAINT_SCENE_DETECT:I = 0xf

.field public static final VELensAlgorithm_ALG_VFI:I = 0xe

.field public static final VELensAlgorithm_ALG_VIDEO_DEBLUR:I = 0xb

.field public static final VELensAlgorithm_ALG_VIDEO_DENOISE:I = 0xa

.field public static final VELensAlgorithm_ALG_VIDEO_NNSR:I = 0x5

.field public static final VELensAlgorithm_ALG_VIDEO_SR:I = 0x6

.field public static final VELensAlgorithm_ALG_VIDEO_STAB:I = 0x10

.field public static final VELensAlgorithm_ALG_VIDEO_VRSR:I = 0x7


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/VELensAlgorithm;


# direct methods
.method public constructor <init>(Lcom/ss/android/vesdk/VELensAlgorithm;)V
    .registers 2

    .line 15
    iput-object p1, p0, Lcom/ss/android/vesdk/VELensAlgorithm$VEAlgorithmFlag;->this$0:Lcom/ss/android/vesdk/VELensAlgorithm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
