.class Lcom/ss/android/ttvecamera/provider/TECameraProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ttvecamera/provider/TECameraProvider$CaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttvecamera/provider/TECameraProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttvecamera/provider/TECameraProvider;


# direct methods
.method constructor <init>(Lcom/ss/android/ttvecamera/provider/TECameraProvider;)V
    .registers 2

    .line 151
    iput-object p1, p0, Lcom/ss/android/ttvecamera/provider/TECameraProvider$1;->this$0:Lcom/ss/android/ttvecamera/provider/TECameraProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameCaptured(Lcom/ss/android/ttvecamera/TECameraFrame;)V
    .registers 2

    return-void
.end method

.method public onNewSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    return-void
.end method
