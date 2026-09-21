.class Lcom/ss/android/vesdk/TECameraVideoRecorder$31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TECameraVideoRecorder;->runTask(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

.field final synthetic val$task:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Ljava/lang/Runnable;)V
    .registers 3

    .line 1883
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$31;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iput-object p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$31;->val$task:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 1886
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$31;->val$task:Ljava/lang/Runnable;

    if-eqz p0, :cond_7

    .line 1887
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_7
    return-void
.end method
