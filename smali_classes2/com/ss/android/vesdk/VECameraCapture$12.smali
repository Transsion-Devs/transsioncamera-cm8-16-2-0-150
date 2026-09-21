.class Lcom/ss/android/vesdk/VECameraCapture$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ttvecamera/TECameraCapture$PictureSizeCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VECameraCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/VECameraCapture;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/VECameraCapture;)V
    .registers 2

    .line 1775
    iput-object p1, p0, Lcom/ss/android/vesdk/VECameraCapture$12;->this$0:Lcom/ss/android/vesdk/VECameraCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPictureSize(Ljava/util/List;Ljava/util/List;)Lcom/ss/android/ttvecamera/TEFrameSizei;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/ttvecamera/TEFrameSizei;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ss/android/ttvecamera/TEFrameSizei;",
            ">;)",
            "Lcom/ss/android/ttvecamera/TEFrameSizei;"
        }
    .end annotation

    .line 1778
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraCapture$12;->this$0:Lcom/ss/android/vesdk/VECameraCapture;

    iget-object v0, v0, Lcom/ss/android/vesdk/VECameraCapture;->mPictureSizeListener:Lcom/ss/android/vesdk/VEListener$VEPictureSizeCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_64

    .line 1779
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1780
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1781
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/android/ttvecamera/TEFrameSizei;

    .line 1782
    new-instance v4, Lcom/ss/android/vesdk/VESize;

    iget v5, v3, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    iget v3, v3, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    invoke-direct {v4, v5, v3}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 1784
    :cond_2e
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_32
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ss/android/ttvecamera/TEFrameSizei;

    .line 1785
    new-instance v3, Lcom/ss/android/vesdk/VESize;

    iget v4, p2, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    iget p2, p2, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    invoke-direct {v3, v4, p2}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_32

    .line 1787
    :cond_4b
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture$12;->this$0:Lcom/ss/android/vesdk/VECameraCapture;

    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraCapture;->mPictureSizeListener:Lcom/ss/android/vesdk/VEListener$VEPictureSizeCallback;

    invoke-interface {p0, v0, v2}, Lcom/ss/android/vesdk/VEListener$VEPictureSizeCallback;->setPictureSize(Ljava/util/List;Ljava/util/List;)Lcom/ss/android/vesdk/VESize;

    move-result-object p0

    if-nez p0, :cond_56

    return-object v1

    .line 1791
    :cond_56
    new-instance p1, Lcom/ss/android/ttvecamera/TEFrameSizei;

    invoke-direct {p1}, Lcom/ss/android/ttvecamera/TEFrameSizei;-><init>()V

    .line 1792
    iget p2, p0, Lcom/ss/android/vesdk/VESize;->width:I

    iput p2, p1, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    .line 1793
    iget p0, p0, Lcom/ss/android/vesdk/VESize;->height:I

    iput p0, p1, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    return-object p1

    :cond_64
    return-object v1
.end method
