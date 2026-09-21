.class Lcom/ss/android/vesdk/TECameraVideoRecorder$48;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/medialib/RecordInvoker$OnARTextContentCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TECameraVideoRecorder;->slamGetTextParagraphContent(Lcom/ss/android/vesdk/VERecorder$OnARTextCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

.field final synthetic val$onARTextCallback:Lcom/ss/android/vesdk/VERecorder$OnARTextCallback;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/VERecorder$OnARTextCallback;)V
    .registers 3

    .line 3881
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$48;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iput-object p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$48;->val$onARTextCallback:Lcom/ss/android/vesdk/VERecorder$OnARTextCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult([Ljava/lang/String;)V
    .registers 2

    .line 3884
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$48;->val$onARTextCallback:Lcom/ss/android/vesdk/VERecorder$OnARTextCallback;

    if-eqz p0, :cond_7

    .line 3885
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/VERecorder$OnARTextCallback;->onContentResult([Ljava/lang/String;)V

    :cond_7
    return-void
.end method
