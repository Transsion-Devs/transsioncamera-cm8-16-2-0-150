.class Lcom/ss/android/medialib/camera/Camera2$3;
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

.field final synthetic val$_position:I


# direct methods
.method constructor <init>(Lcom/ss/android/medialib/camera/Camera2;I)V
    .registers 3

    .line 283
    iput-object p1, p0, Lcom/ss/android/medialib/camera/Camera2$3;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    iput p2, p0, Lcom/ss/android/medialib/camera/Camera2$3;->val$_position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 286
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2$3;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    # getter for: Lcom/ss/android/medialib/camera/Camera2;->mCameraOpenListener:Lcom/ss/android/medialib/camera/CameraOpenListener;
    invoke-static {v0}, Lcom/ss/android/medialib/camera/Camera2;->access$200(Lcom/ss/android/medialib/camera/Camera2;)Lcom/ss/android/medialib/camera/CameraOpenListener;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 287
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2$3;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    # getter for: Lcom/ss/android/medialib/camera/Camera2;->mCameraOpenListener:Lcom/ss/android/medialib/camera/CameraOpenListener;
    invoke-static {v0}, Lcom/ss/android/medialib/camera/Camera2;->access$200(Lcom/ss/android/medialib/camera/Camera2;)Lcom/ss/android/medialib/camera/CameraOpenListener;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/medialib/camera/Camera2$3;->val$_position:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    const/4 v2, -0x2

    invoke-interface {v0, v1, v2, p0}, Lcom/ss/android/medialib/camera/CameraOpenListener;->onOpenFail(IILjava/lang/String;)V

    :cond_26
    return-void
.end method
