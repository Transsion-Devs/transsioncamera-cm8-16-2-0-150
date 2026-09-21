.class Lcom/ss/android/vesdk/VEEffect$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ttve/nativePort/TEEffectCallback$TECallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/VEEffect;->regFaceInfoCallback(Lcom/ss/android/vesdk/VERecorder$VEFaceInfoCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/VEEffect;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/VEEffect;)V
    .registers 2

    .line 535
    iput-object p1, p0, Lcom/ss/android/vesdk/VEEffect$1;->this$0:Lcom/ss/android/vesdk/VEEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult([[B)V
    .registers 6

    if-nez p1, :cond_1d

    .line 539
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect$1;->this$0:Lcom/ss/android/vesdk/VEEffect;

    # getter for: Lcom/ss/android/vesdk/VEEffect;->mFaceListeners:Ljava/util/List;
    invoke-static {p0}, Lcom/ss/android/vesdk/VEEffect;->access$000(Lcom/ss/android/vesdk/VEEffect;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/vesdk/VERecorder$VEFaceInfoCallback;

    const/4 v0, 0x0

    .line 540
    invoke-interface {p1, v0, v0}, Lcom/ss/android/vesdk/VERecorder$VEFaceInfoCallback;->onResult(Lcom/ss/android/vesdk/faceinfo/VEFaceAttributeInfo;Lcom/ss/android/vesdk/faceinfo/VEFaceDetectInfo;)V

    goto :goto_c

    .line 544
    :cond_1d
    new-instance v0, Lcom/ss/android/vesdk/faceinfo/VEFaceAttributeInfo;

    invoke-direct {v0}, Lcom/ss/android/vesdk/faceinfo/VEFaceAttributeInfo;-><init>()V

    .line 545
    new-instance v1, Lcom/ss/android/ttve/nativePort/TEParcelWrapper;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-direct {v1, v2}, Lcom/ss/android/ttve/nativePort/TEParcelWrapper;-><init>([B)V

    .line 546
    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/faceinfo/VEFaceAttributeInfo;->setParcelWrapper(Lcom/ss/android/ttve/nativePort/TEParcelWrapper;)V

    .line 547
    invoke-virtual {v0}, Lcom/ss/android/vesdk/faceinfo/VEFaceAttributeInfo;->readFromParcel()V

    .line 548
    new-instance v1, Lcom/ss/android/vesdk/faceinfo/VEFaceDetectInfo;

    invoke-direct {v1}, Lcom/ss/android/vesdk/faceinfo/VEFaceDetectInfo;-><init>()V

    .line 549
    new-instance v2, Lcom/ss/android/ttve/nativePort/TEParcelWrapper;

    const/4 v3, 0x1

    aget-object p1, p1, v3

    invoke-direct {v2, p1}, Lcom/ss/android/ttve/nativePort/TEParcelWrapper;-><init>([B)V

    .line 550
    invoke-virtual {v1, v2}, Lcom/ss/android/vesdk/faceinfo/VEFaceDetectInfo;->setParcelWrapper(Lcom/ss/android/ttve/nativePort/TEParcelWrapper;)V

    .line 551
    invoke-virtual {v1}, Lcom/ss/android/vesdk/faceinfo/VEFaceDetectInfo;->readFromParcel()V

    .line 553
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect$1;->this$0:Lcom/ss/android/vesdk/VEEffect;

    # getter for: Lcom/ss/android/vesdk/VEEffect;->mFaceListeners:Ljava/util/List;
    invoke-static {p0}, Lcom/ss/android/vesdk/VEEffect;->access$000(Lcom/ss/android/vesdk/VEEffect;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/vesdk/VERecorder$VEFaceInfoCallback;

    .line 554
    invoke-interface {p1, v0, v1}, Lcom/ss/android/vesdk/VERecorder$VEFaceInfoCallback;->onResult(Lcom/ss/android/vesdk/faceinfo/VEFaceAttributeInfo;Lcom/ss/android/vesdk/faceinfo/VEFaceDetectInfo;)V

    goto :goto_4d

    :cond_5d
    return-void
.end method
