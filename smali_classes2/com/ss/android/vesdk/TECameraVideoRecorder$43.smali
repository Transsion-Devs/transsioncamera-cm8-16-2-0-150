.class Lcom/ss/android/vesdk/TECameraVideoRecorder$43;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/medialib/RecordInvoker$OnHandDetectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TECameraVideoRecorder;->regHandDetectCallback([ILcom/ss/android/vesdk/VERecorder$VEHandDetectCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

.field final synthetic val$callback:Lcom/ss/android/vesdk/VERecorder$VEHandDetectCallback;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/VERecorder$VEHandDetectCallback;)V
    .registers 3

    .line 3705
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$43;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iput-object p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$43;->val$callback:Lcom/ss/android/vesdk/VERecorder$VEHandDetectCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult([I)V
    .registers 2

    .line 3708
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$43;->val$callback:Lcom/ss/android/vesdk/VERecorder$VEHandDetectCallback;

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/VERecorder$VEHandDetectCallback;->onResult([I)V

    return-void
.end method
