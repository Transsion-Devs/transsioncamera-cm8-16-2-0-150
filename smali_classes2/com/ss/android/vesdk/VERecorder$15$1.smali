.class Lcom/ss/android/vesdk/VERecorder$15$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/VERecorder$15;->onDone(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ss/android/vesdk/VERecorder$15;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/VERecorder$15;)V
    .registers 2

    .line 3488
    iput-object p1, p0, Lcom/ss/android/vesdk/VERecorder$15$1;->this$1:Lcom/ss/android/vesdk/VERecorder$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 3491
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder$15$1;->this$1:Lcom/ss/android/vesdk/VERecorder$15;

    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder$15;->val$finalCameraView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
