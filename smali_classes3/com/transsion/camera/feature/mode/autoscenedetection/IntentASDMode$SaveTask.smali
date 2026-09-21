.class Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode$SaveTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;
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
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)V
    .registers 2

    .line 245
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode$SaveTask;->this$0:Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode$SaveTask;-><init>(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Exception;
    .registers 4

    .line 248
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode$SaveTask;->this$0:Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->access$000(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "[attachToSaveUri]"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 251
    :try_start_c
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode$SaveTask;->this$0:Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->access$100(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode$SaveTask;->this$0:Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->-$$Nest$fgetmSaveUri(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_20} :catch_3d
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_20} :catch_3b
    .catchall {:try_start_c .. :try_end_20} :catchall_39

    if-eqz v0, :cond_35

    .line 253
    :try_start_22
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode$SaveTask;->this$0:Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->-$$Nest$fgetmJpegData(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2b} :catch_32
    .catch Ljava/lang/SecurityException; {:try_start_22 .. :try_end_2b} :catch_2f
    .catchall {:try_start_22 .. :try_end_2b} :catchall_2c

    goto :goto_35

    :catchall_2c
    move-exception p0

    move-object p1, v0

    goto :goto_3f

    :catch_2f
    move-exception p0

    move-object p1, v0

    goto :goto_43

    :catch_32
    move-exception p0

    move-object p1, v0

    goto :goto_47

    .line 260
    :cond_35
    :goto_35
    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    return-object p1

    :catchall_39
    move-exception p0

    goto :goto_3f

    :catch_3b
    move-exception p0

    goto :goto_43

    :catch_3d
    move-exception p0

    goto :goto_47

    :goto_3f
    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 261
    throw p0

    .line 260
    :goto_43
    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    return-object p0

    :goto_47
    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 245
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode$SaveTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Exception;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Exception;)V
    .registers 7

    .line 267
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode$SaveTask;->this$0:Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mIntentAction:Lcom/transsion/camera/app/common/IApp$IIntentAction;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->access$200(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)Lcom/transsion/camera/app/common/IApp$IIntentAction;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_80

    :cond_9
    const/4 v0, 0x0

    if-nez p1, :cond_17

    .line 271
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode$SaveTask;->this$0:Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mIntentAction:Lcom/transsion/camera/app/common/IApp$IIntentAction;
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->access$300(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)Lcom/transsion/camera/app/common/IApp$IIntentAction;

    move-result-object p0

    const/4 p1, -0x1

    invoke-interface {p0, p1, v0}, Lcom/transsion/camera/app/common/IApp$IIntentAction;->onResult(ILandroid/content/Intent;)V

    return-void

    .line 272
    :cond_17
    instance-of v1, p1, Ljava/io/IOException;

    const/4 v2, 0x0

    if-eqz v1, :cond_40

    .line 273
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode$SaveTask;->this$0:Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;
    invoke-static {v1}, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->access$400(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[doAttach] IOException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 274
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode$SaveTask;->this$0:Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mIntentAction:Lcom/transsion/camera/app/common/IApp$IIntentAction;
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->access$500(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)Lcom/transsion/camera/app/common/IApp$IIntentAction;

    move-result-object p0

    invoke-interface {p0, v2, v0}, Lcom/transsion/camera/app/common/IApp$IIntentAction;->onResult(ILandroid/content/Intent;)V

    return-void

    .line 275
    :cond_40
    instance-of v1, p1, Ljava/lang/SecurityException;

    if-eqz v1, :cond_80

    .line 276
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode$SaveTask;->this$0:Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;
    invoke-static {v1}, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->access$600(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[doAttach] SecurityException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 277
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode$SaveTask;->this$0:Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->access$700(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode$SaveTask;->this$0:Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->access$800(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/transsion/camera/R$string;->attach_uri_permission_denied:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 278
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode$SaveTask;->this$0:Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mIntentAction:Lcom/transsion/camera/app/common/IApp$IIntentAction;
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;->access$900(Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode;)Lcom/transsion/camera/app/common/IApp$IIntentAction;

    move-result-object p0

    invoke-interface {p0, v2, v0}, Lcom/transsion/camera/app/common/IApp$IIntentAction;->onResult(ILandroid/content/Intent;)V

    :cond_80
    :goto_80
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 245
    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDMode$SaveTask;->onPostExecute(Ljava/lang/Exception;)V

    return-void
.end method
