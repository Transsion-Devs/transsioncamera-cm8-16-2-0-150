.class Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$SaveTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;


# direct methods
.method public static synthetic $r8$lambda$mZRTE_9WYRC9ivsH7FBXRxlI4Xo(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    .line 386
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private constructor <init>(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)V
    .registers 2

    .line 360
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$SaveTask;->this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$SaveTask;-><init>(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Exception;
    .registers 4

    .line 363
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$SaveTask;->this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->access$000(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[attachToSaveUri]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$SaveTask;->this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->-$$Nest$fgetmSaveUri(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 364
    :try_start_20
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$SaveTask;->this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->access$100(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$SaveTask;->this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->-$$Nest$fgetmSaveUri(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p1
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_34} :catch_5d
    .catch Ljava/lang/SecurityException; {:try_start_20 .. :try_end_34} :catch_5d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20 .. :try_end_34} :catch_5d

    if-eqz p1, :cond_42

    .line 366
    :try_start_36
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$SaveTask;->this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->-$$Nest$fgetmJpegData(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_42

    :catchall_40
    move-exception p0

    goto :goto_52

    .line 368
    :cond_42
    :goto_42
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$SaveTask;->this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->-$$Nest$fgetmSaveUri(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->getRealPathFromURI(Landroid/net/Uri;)V
    :try_end_4b
    .catchall {:try_start_36 .. :try_end_4b} :catchall_40

    if-eqz p1, :cond_50

    .line 369
    :try_start_4d
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_5d
    .catch Ljava/lang/SecurityException; {:try_start_4d .. :try_end_50} :catch_5d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4d .. :try_end_50} :catch_5d

    :cond_50
    const/4 p0, 0x0

    return-object p0

    :goto_52
    if-eqz p1, :cond_5c

    .line 364
    :try_start_54
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_58

    goto :goto_5c

    :catchall_58
    move-exception p1

    :try_start_59
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5c
    :goto_5c
    throw p0
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5d} :catch_5d
    .catch Ljava/lang/SecurityException; {:try_start_59 .. :try_end_5d} :catch_5d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_59 .. :try_end_5d} :catch_5d

    :catch_5d
    move-exception p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 360
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$SaveTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Exception;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Exception;)V
    .registers 7

    .line 377
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$SaveTask;->this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->access$200(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[attachToSaveUri] onPostExecute,e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$SaveTask;->this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mIntentAction:Lcom/transsion/camera/app/common/IApp$IIntentAction;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->access$300(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Lcom/transsion/camera/app/common/IApp$IIntentAction;

    move-result-object v0

    if-nez v0, :cond_23

    return-void

    :cond_23
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-nez p1, :cond_bb

    .line 382
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$SaveTask;->this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->access$400(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[attachToSaveUri] onPostExecute add uri to intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$SaveTask;->this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->-$$Nest$fgetmSaveUri(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 383
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$SaveTask;->this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->-$$Nest$fgetmSaveUri(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_b1

    .line 384
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$SaveTask;->this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->-$$Nest$fgetmSaveUri(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    .line 385
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$SaveTask;->this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;
    invoke-static {v2}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->access$500(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[attachToSaveUri] onPostExecute add uri authority:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",mFilePath:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$SaveTask;->this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;

    invoke-static {v4}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->-$$Nest$fgetmFilePath(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_a7

    .line 386
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$SaveTask;->this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->-$$Nest$fgetNEED_INTENT_APK_LIST(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$SaveTask$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$SaveTask$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_a7

    .line 387
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 388
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$SaveTask;->this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mIntentAction:Lcom/transsion/camera/app/common/IApp$IIntentAction;
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->access$600(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Lcom/transsion/camera/app/common/IApp$IIntentAction;

    move-result-object p0

    invoke-interface {p0, v1, p1}, Lcom/transsion/camera/app/common/IApp$IIntentAction;->onResult(ILandroid/content/Intent;)V

    return-void

    .line 390
    :cond_a7
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$SaveTask;->this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mIntentAction:Lcom/transsion/camera/app/common/IApp$IIntentAction;
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->access$700(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Lcom/transsion/camera/app/common/IApp$IIntentAction;

    move-result-object p0

    invoke-interface {p0, v1, v0}, Lcom/transsion/camera/app/common/IApp$IIntentAction;->onResult(ILandroid/content/Intent;)V

    return-void

    .line 393
    :cond_b1
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$SaveTask;->this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mIntentAction:Lcom/transsion/camera/app/common/IApp$IIntentAction;
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->access$800(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Lcom/transsion/camera/app/common/IApp$IIntentAction;

    move-result-object p0

    invoke-interface {p0, v1, v0}, Lcom/transsion/camera/app/common/IApp$IIntentAction;->onResult(ILandroid/content/Intent;)V

    return-void

    .line 396
    :cond_bb
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 397
    instance-of p1, p1, Ljava/lang/SecurityException;

    const/4 v2, 0x0

    if-eqz p1, :cond_e5

    .line 398
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$SaveTask;->this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->access$900(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Landroid/content/Context;

    move-result-object p1

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$SaveTask;->this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->access$1000(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$string;->attach_uri_permission_denied:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 399
    invoke-virtual {p1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_e2

    .line 401
    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 403
    :cond_e2
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 405
    :cond_e5
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$SaveTask;->this$0:Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mIntentAction:Lcom/transsion/camera/app/common/IApp$IIntentAction;
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;->access$1100(Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode;)Lcom/transsion/camera/app/common/IApp$IIntentAction;

    move-result-object p0

    invoke-interface {p0, v2, v0}, Lcom/transsion/camera/app/common/IApp$IIntentAction;->onResult(ILandroid/content/Intent;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 360
    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/photo/IntentPhotoMode$SaveTask;->onPostExecute(Ljava/lang/Exception;)V

    return-void
.end method
