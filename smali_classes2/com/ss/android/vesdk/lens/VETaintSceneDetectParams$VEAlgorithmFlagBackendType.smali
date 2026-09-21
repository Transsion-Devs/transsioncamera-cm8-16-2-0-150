.class public Lcom/ss/android/vesdk/lens/VETaintSceneDetectParams$VEAlgorithmFlagBackendType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/lens/VETaintSceneDetectParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VEAlgorithmFlagBackendType"
.end annotation


# static fields
.field public static final VELensAlgorithm_ALG_BACKEND_DSP:I = 0x2

.field public static final VELensAlgorithm_ALG_BACKEND_DYNAMIC_TUNING:I = 0x4

.field public static final VELensAlgorithm_ALG_BACKEND_GPU:I = 0x1

.field public static final VELensAlgorithm_ALG_BACKEND_HETEROGENE:I = 0x3

.field public static final VELensAlgorithm_BACKEND_CPU:I


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/lens/VETaintSceneDetectParams;


# direct methods
.method public constructor <init>(Lcom/ss/android/vesdk/lens/VETaintSceneDetectParams;)V
    .registers 2

    .line 9
    iput-object p1, p0, Lcom/ss/android/vesdk/lens/VETaintSceneDetectParams$VEAlgorithmFlagBackendType;->this$0:Lcom/ss/android/vesdk/lens/VETaintSceneDetectParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
