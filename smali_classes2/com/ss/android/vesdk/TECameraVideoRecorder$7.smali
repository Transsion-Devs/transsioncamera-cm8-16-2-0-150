.class Lcom/ss/android/vesdk/TECameraVideoRecorder$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TECameraVideoRecorder;->surfaceChanged(Landroid/view/Surface;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

.field final synthetic val$surface:Landroid/view/Surface;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Landroid/view/Surface;)V
    .registers 3

    .line 700
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$7;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iput-object p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$7;->val$surface:Landroid/view/Surface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 703
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$7;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$7;->val$surface:Landroid/view/Surface;

    invoke-virtual {v0, p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->changeSurface(Landroid/view/Surface;)I

    return-void
.end method
