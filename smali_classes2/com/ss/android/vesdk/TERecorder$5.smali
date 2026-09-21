.class Lcom/ss/android/vesdk/TERecorder$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/VEListener$VERecorderCameraListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TERecorder;->startLumaDetectEC()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TERecorder;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TERecorder;)V
    .registers 2

    .line 983
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder$5;->this$0:Lcom/ss/android/vesdk/TERecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .registers 5

    .line 986
    const-string v0, "iso"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 987
    const-string v0, "maxiso"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 988
    const-string v0, "miniso"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 989
    const-string v0, "exposuretime"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 990
    const-string v0, "maxexposuretime"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 991
    const-string v0, "minexposuretime"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 992
    const-string v0, "step"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    .line 994
    new-instance v0, Lcom/ss/android/vesdk/TERecorder$5$1;

    invoke-direct {v0, p0}, Lcom/ss/android/vesdk/TERecorder$5$1;-><init>(Lcom/ss/android/vesdk/TERecorder$5;)V

    .line 1015
    new-instance v1, Lcom/ss/android/vesdk/lens/VELumaDetectParams;

    invoke-direct {v1}, Lcom/ss/android/vesdk/lens/VELumaDetectParams;-><init>()V

    const/16 v2, 0xf

    .line 1016
    iput v2, v1, Lcom/ss/android/vesdk/lens/VEBaseRecorderLensParams;->algorithmFlag:I

    .line 1023
    iput p1, v1, Lcom/ss/android/vesdk/lens/VELumaDetectParams;->ecStep:F

    .line 1025
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder$5;->this$0:Lcom/ss/android/vesdk/TERecorder;

    invoke-virtual {p0, v1, v0}, Lcom/ss/android/vesdk/TERecorder;->setLensParams(Lcom/ss/android/vesdk/lens/VEBaseRecorderLensParams;Lcom/ss/android/vesdk/VERecorder$VERecorderLensCallback;)V

    return-void
.end method
