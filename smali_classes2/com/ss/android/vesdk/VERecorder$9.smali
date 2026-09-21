.class Lcom/ss/android/vesdk/VERecorder$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/VERecorder;->capture(IIIZZLcom/ss/android/vesdk/VERecorder$ILightSoftCallback;Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/VERecorder;

.field final synthetic val$callback:Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;

.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/VERecorder;Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;II)V
    .registers 5

    .line 1894
    iput-object p1, p0, Lcom/ss/android/vesdk/VERecorder$9;->this$0:Lcom/ss/android/vesdk/VERecorder;

    iput-object p2, p0, Lcom/ss/android/vesdk/VERecorder$9;->val$callback:Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;

    iput p3, p0, Lcom/ss/android/vesdk/VERecorder$9;->val$width:I

    iput p4, p0, Lcom/ss/android/vesdk/VERecorder$9;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageError(II)V
    .registers 6

    .line 1920
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1921
    const-string v1, "width"

    iget v2, p0, Lcom/ss/android/vesdk/VERecorder$9;->val$width:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1922
    const-string v1, "height"

    iget v2, p0, Lcom/ss/android/vesdk/VERecorder$9;->val$height:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1923
    const-string v1, "tag"

    const-string v2, "capture"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1924
    const-string v1, "resultCode"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1925
    const-string v1, "vesdk_event_recorder_shot_screen"

    const-string v2, "behavior"

    invoke-static {v1, v0, v2}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_26
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_26} :catch_27

    goto :goto_2b

    :catch_27
    move-exception v0

    .line 1927
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1930
    :goto_2b
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder$9;->val$callback:Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;

    if-eqz p0, :cond_32

    .line 1931
    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;->onImageError(II)V

    :cond_32
    return-void
.end method

.method public onImageRenderPending(II)V
    .registers 3

    .line 1905
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder$9;->val$callback:Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;

    if-eqz p0, :cond_7

    .line 1906
    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;->onImageRenderPending(II)V

    :cond_7
    return-void
.end method

.method public onImageRenderSuccess(Landroid/graphics/Bitmap;Lcom/ss/android/ttve/model/VEFrame;)V
    .registers 3

    .line 1912
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder$9;->val$callback:Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;

    if-eqz p0, :cond_7

    .line 1913
    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;->onImageRenderSuccess(Landroid/graphics/Bitmap;Lcom/ss/android/ttve/model/VEFrame;)V

    :cond_7
    return-void
.end method

.method public onShutter(II)V
    .registers 3

    .line 1898
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder$9;->val$callback:Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;

    if-eqz p0, :cond_7

    .line 1899
    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;->onShutter(II)V

    :cond_7
    return-void
.end method
