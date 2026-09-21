.class Lcom/ss/android/vesdk/VEEffect$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/medialib/listener/FaceDetectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/VEEffect;->setDetectListener(Lcom/ss/android/vesdk/VERecorder$DetectListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/VEEffect;

.field final synthetic val$listener:Lcom/ss/android/vesdk/VERecorder$DetectListener;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/VEEffect;Lcom/ss/android/vesdk/VERecorder$DetectListener;)V
    .registers 3

    .line 857
    iput-object p1, p0, Lcom/ss/android/vesdk/VEEffect$2;->this$0:Lcom/ss/android/vesdk/VEEffect;

    iput-object p2, p0, Lcom/ss/android/vesdk/VEEffect$2;->val$listener:Lcom/ss/android/vesdk/VERecorder$DetectListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(II)V
    .registers 3

    .line 860
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect$2;->val$listener:Lcom/ss/android/vesdk/VERecorder$DetectListener;

    if-eqz p0, :cond_7

    .line 861
    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/VERecorder$DetectListener;->onResult(II)V

    :cond_7
    return-void
.end method
