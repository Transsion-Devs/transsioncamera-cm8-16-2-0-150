.class Lcom/ss/android/medialib/camera/Camera2$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/medialib/camera/Camera2;->open(ILcom/ss/android/medialib/camera/CameraOpenListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/medialib/camera/Camera2;

.field final synthetic val$e:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/ss/android/medialib/camera/Camera2;Ljava/lang/Throwable;)V
    .registers 3

    .line 359
    iput-object p1, p0, Lcom/ss/android/medialib/camera/Camera2$4;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    iput-object p2, p0, Lcom/ss/android/medialib/camera/Camera2$4;->val$e:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 362
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2$4;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    # getter for: Lcom/ss/android/medialib/camera/Camera2;->mCameraOpenListener:Lcom/ss/android/medialib/camera/CameraOpenListener;
    invoke-static {v0}, Lcom/ss/android/medialib/camera/Camera2;->access$200(Lcom/ss/android/medialib/camera/Camera2;)Lcom/ss/android/medialib/camera/CameraOpenListener;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 363
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2$4;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    # getter for: Lcom/ss/android/medialib/camera/Camera2;->mCameraOpenListener:Lcom/ss/android/medialib/camera/CameraOpenListener;
    invoke-static {v0}, Lcom/ss/android/medialib/camera/Camera2;->access$200(Lcom/ss/android/medialib/camera/Camera2;)Lcom/ss/android/medialib/camera/CameraOpenListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/medialib/camera/Camera2$4;->val$e:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, -0x1

    invoke-interface {v0, v2, v3, v1}, Lcom/ss/android/medialib/camera/CameraOpenListener;->onOpenFail(IILjava/lang/String;)V

    .line 364
    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera2$4;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    const/4 v0, 0x0

    # setter for: Lcom/ss/android/medialib/camera/Camera2;->mCameraOpenListener:Lcom/ss/android/medialib/camera/CameraOpenListener;
    invoke-static {p0, v0}, Lcom/ss/android/medialib/camera/Camera2;->access$202(Lcom/ss/android/medialib/camera/Camera2;Lcom/ss/android/medialib/camera/CameraOpenListener;)Lcom/ss/android/medialib/camera/CameraOpenListener;

    :cond_1f
    return-void
.end method
