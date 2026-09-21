.class Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)V
    .registers 2

    .line 125
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$1;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 15

    .line 128
    sget-object v0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusChanged key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " value = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 129
    const-string v1, "key_pro_watermark"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "off"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x65

    if-eqz v1, :cond_63

    .line 130
    move-object v1, p2

    check-cast v1, Ljava/lang/CharSequence;

    const-string v7, "1"

    invoke-static {v1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 131
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$1;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->-$$Nest$fgetmWatermarkOn(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Z

    move-result v1

    if-nez v1, :cond_41

    goto/16 :goto_208

    .line 134
    :cond_41
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$1;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {v1, v4}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->-$$Nest$fputmForceCloseWatermark(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;Z)V

    .line 135
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$1;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->-$$Nest$fgetmHandler(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 136
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$1;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->-$$Nest$fgetmHandler(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_63

    .line 138
    :cond_59
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$1;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {v1, v5}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->-$$Nest$fputmForceCloseWatermark(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;Z)V

    .line 139
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$1;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-virtual {v1, v3}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->onValueChanged(Ljava/lang/String;)V

    .line 142
    :cond_63
    :goto_63
    const-string v1, "key_time_watermark"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_73

    const-string v1, "key_edit_watermark_update"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_85

    .line 143
    :cond_73
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$1;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->-$$Nest$fgetmHandler(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 144
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$1;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->-$$Nest$fgetmHandler(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 147
    :cond_85
    const-string v1, "key_picture_size"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v7, " return"

    const-string v8, "pictureSize = "

    const-string v9, ", "

    const-string v10, "mPictureHeight = "

    if-eqz v1, :cond_11c

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$1;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->-$$Nest$fgetmPictureHeight(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)I

    move-result v1

    iget-object v11, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$1;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {v11}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->-$$Nest$mgetPictureSize(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Landroid/util/Size;

    move-result-object v11

    invoke-virtual {v11}, Landroid/util/Size;->getHeight()I

    move-result v11

    if-eq v1, v11, :cond_11c

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$1;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {v11}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->-$$Nest$fgetmPictureHeight(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)I

    move-result v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$1;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    .line 149
    invoke-static {v11}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->-$$Nest$mgetPictureSize(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Landroid/util/Size;

    move-result-object v11

    invoke-virtual {v11}, Landroid/util/Size;->getHeight()I

    move-result v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 148
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$1;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v11

    invoke-virtual {v11}, Landroid/util/Size;->getHeight()I

    move-result v11

    invoke-static {v1, v11}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->-$$Nest$fputmPictureHeight(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;I)V

    .line 151
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$1;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->-$$Nest$mdoNotUpdateWatermark(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Z

    move-result v1

    if-eqz v1, :cond_10a

    .line 152
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$1;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->-$$Nest$mgetPictureSize(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Landroid/util/Size;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 155
    :cond_10a
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$1;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->-$$Nest$fgetmHandler(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 156
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$1;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->-$$Nest$fgetmHandler(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 159
    :cond_11c
    const-string v1, "key_picture_size_sat"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$1;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->-$$Nest$fgetmPictureHeight(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)I

    move-result v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v11

    invoke-virtual {v11}, Landroid/util/Size;->getHeight()I

    move-result v11

    if-eq v1, v11, :cond_1c0

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$1;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->-$$Nest$fgetmPictureHeight(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 160
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$1;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->-$$Nest$fputmPictureHeight(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;I)V

    .line 163
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$1;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->-$$Nest$mdoNotUpdateWatermark(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Z

    move-result v1

    if-eqz v1, :cond_19d

    .line 164
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$1;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->-$$Nest$mgetPictureSize(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Landroid/util/Size;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 167
    :cond_19d
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$1;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->-$$Nest$fgetmHandler(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 168
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 169
    iput v6, v0, Landroid/os/Message;->what:I

    .line 170
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$1;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->-$$Nest$fgetmPictureHeight(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 171
    iput v5, v0, Landroid/os/Message;->arg2:I

    .line 172
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$1;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->-$$Nest$fgetmHandler(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 175
    :cond_1c0
    const-string v0, "key_pro_edit_watermark_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "on"

    if-eqz v0, :cond_1f5

    .line 176
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1eb

    .line 177
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$1;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {v0, v4}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->-$$Nest$fputmForceCloseWatermark(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;Z)V

    .line 178
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$1;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->-$$Nest$fgetmHandler(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 179
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$1;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->-$$Nest$fgetmHandler(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1f5

    .line 181
    :cond_1eb
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$1;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {v0, v5}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->-$$Nest$fputmForceCloseWatermark(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;Z)V

    .line 182
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$1;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-virtual {v0, v3}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->onValueChanged(Ljava/lang/String;)V

    .line 185
    :cond_1f5
    :goto_1f5
    const-string v0, "key_watermark"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_208

    .line 186
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$1;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->-$$Nest$fputmWatermarkOn(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;Z)V

    :cond_208
    :goto_208
    return-void
.end method
