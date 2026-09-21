.class Lcom/ss/android/vesdk/VERecorder$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/VERecorder$VEFrameRenderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/VERecorder;->capture(Lcom/ss/android/vesdk/VECaptureRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/VERecorder;

.field final synthetic val$callback:Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/VERecorder;Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;)V
    .registers 3

    .line 2127
    iput-object p1, p0, Lcom/ss/android/vesdk/VERecorder$12;->this$0:Lcom/ss/android/vesdk/VERecorder;

    iput-object p2, p0, Lcom/ss/android/vesdk/VERecorder$12;->val$callback:Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/graphics/Bitmap;)V
    .registers 3

    .line 2137
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder$12;->val$callback:Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;

    if-eqz p0, :cond_8

    const/4 v0, 0x0

    .line 2138
    invoke-interface {p0, p1, v0}, Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;->onShotScreen(Landroid/graphics/Bitmap;I)V

    :cond_8
    return-void
.end method

.method public onState(I)V
    .registers 3

    .line 2130
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder$12;->val$callback:Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;

    if-eqz p0, :cond_a

    if-eqz p1, :cond_a

    const/4 v0, 0x0

    .line 2131
    invoke-interface {p0, v0, p1}, Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;->onShotScreen(Landroid/graphics/Bitmap;I)V

    :cond_a
    return-void
.end method
