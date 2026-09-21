.class Lcom/ss/android/vesdk/VERecorder$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/VEListener$VECallListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/VERecorder;->setPreviewRatio(Lcom/ss/android/vesdk/VEPreviewRadio;Lcom/ss/android/vesdk/VESize;Lcom/ss/android/vesdk/VESize;Lcom/ss/android/vesdk/VESize;ILandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/VERecorder;

.field final synthetic val$finalCameraView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/VERecorder;Landroid/view/View;)V
    .registers 3

    .line 3485
    iput-object p1, p0, Lcom/ss/android/vesdk/VERecorder$15;->this$0:Lcom/ss/android/vesdk/VERecorder;

    iput-object p2, p0, Lcom/ss/android/vesdk/VERecorder$15;->val$finalCameraView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(I)V
    .registers 3

    .line 3488
    iget-object p1, p0, Lcom/ss/android/vesdk/VERecorder$15;->val$finalCameraView:Landroid/view/View;

    new-instance v0, Lcom/ss/android/vesdk/VERecorder$15$1;

    invoke-direct {v0, p0}, Lcom/ss/android/vesdk/VERecorder$15$1;-><init>(Lcom/ss/android/vesdk/VERecorder$15;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
