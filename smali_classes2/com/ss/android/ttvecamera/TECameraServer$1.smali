.class Lcom/ss/android/ttvecamera/TECameraServer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttvecamera/TECameraServer;->destroy()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttvecamera/TECameraServer;


# direct methods
.method constructor <init>(Lcom/ss/android/ttvecamera/TECameraServer;)V
    .registers 2

    .line 298
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$1;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 301
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer$1;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mProviderManager:Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->removeProvider()V

    .line 302
    const-string p0, "TECameraServer"

    const-string v0, "provider release..."

    invoke-static {p0, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
