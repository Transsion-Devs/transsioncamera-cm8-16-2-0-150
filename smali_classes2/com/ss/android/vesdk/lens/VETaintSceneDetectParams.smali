.class public Lcom/ss/android/vesdk/lens/VETaintSceneDetectParams;
.super Lcom/ss/android/vesdk/lens/VEBaseRecorderLensParams;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/lens/VETaintSceneDetectParams$VEAlgorithmFlagBackendType;
    }
.end annotation


# instance fields
.field public backendType:I

.field public detectFrequency:I

.field public detectRepeatNum:I

.field public kernelBinPath:Ljava/lang/String;

.field public modelPath:Ljava/lang/String;

.field public numThread:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 6
    invoke-direct {p0}, Lcom/ss/android/vesdk/lens/VEBaseRecorderLensParams;-><init>()V

    const/4 v0, 0x3

    .line 20
    iput v0, p0, Lcom/ss/android/vesdk/lens/VETaintSceneDetectParams;->detectFrequency:I

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/ss/android/vesdk/lens/VETaintSceneDetectParams;->backendType:I

    const/4 v0, 0x2

    .line 36
    iput v0, p0, Lcom/ss/android/vesdk/lens/VETaintSceneDetectParams;->numThread:I

    const/4 v0, 0x1

    .line 43
    iput v0, p0, Lcom/ss/android/vesdk/lens/VETaintSceneDetectParams;->detectRepeatNum:I

    return-void
.end method
