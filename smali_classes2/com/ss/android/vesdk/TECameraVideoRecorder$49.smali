.class Lcom/ss/android/vesdk/TECameraVideoRecorder$49;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/medialib/RecordInvoker$OnARTextBitmapCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TECameraVideoRecorder;->slamGetTextBitmap(Lcom/ss/android/vesdk/VERecorder$OnARTextBitmapCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

.field final synthetic val$onARTextBitmapCallback:Lcom/ss/android/vesdk/VERecorder$OnARTextBitmapCallback;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/VERecorder$OnARTextBitmapCallback;)V
    .registers 3

    .line 3892
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$49;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iput-object p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$49;->val$onARTextBitmapCallback:Lcom/ss/android/vesdk/VERecorder$OnARTextBitmapCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;Lcom/ss/android/vesdk/model/BefTextLayout;)Lcom/ss/android/vesdk/model/BefTextLayoutResult;
    .registers 3

    .line 3895
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$49;->val$onARTextBitmapCallback:Lcom/ss/android/vesdk/VERecorder$OnARTextBitmapCallback;

    if-eqz p0, :cond_9

    .line 3896
    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/VERecorder$OnARTextBitmapCallback;->onBefTextLayoutResult(Ljava/lang/String;Lcom/ss/android/vesdk/model/BefTextLayout;)Lcom/ss/android/vesdk/model/BefTextLayoutResult;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method
