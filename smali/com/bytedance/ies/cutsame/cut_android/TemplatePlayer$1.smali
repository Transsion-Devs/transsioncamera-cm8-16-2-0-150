.class Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$1;
.super Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;


# direct methods
.method constructor <init>(Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;)V
    .registers 2

    .line 164
    iput-object p1, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$1;->this$0:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;

    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .registers 3

    .line 264
    invoke-super {p0}, Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;->onDestroy()V

    .line 265
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$1;->this$0:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;

    # getter for: Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->outStatusListener:Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;
    invoke-static {v0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->access$100(Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;)Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 267
    invoke-virtual {v0}, Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;->onDestroy()V

    .line 270
    :cond_e
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$1;->this$0:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;

    # getter for: Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->newStateListener:Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayerStateListener;
    invoke-static {v0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->access$200(Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;)Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayerStateListener;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 272
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$1;->this$0:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;

    const/16 v1, 0x3ef

    invoke-interface {v0, p0, v1}, Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayerStateListener;->onChanged(Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayer;I)V

    :cond_1d
    return-void
.end method

.method public onFrameRefresh(II)V
    .registers 3

    .line 255
    invoke-super {p0, p1, p2}, Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;->onFrameRefresh(II)V

    .line 256
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$1;->this$0:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;

    # getter for: Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->outStatusListener:Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;
    invoke-static {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->access$100(Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;)Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 258
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;->onFrameRefresh(II)V

    :cond_e
    return-void
.end method

.method public onPause()V
    .registers 3

    .line 182
    invoke-super {p0}, Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;->onPause()V

    .line 183
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$1;->this$0:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;

    # getter for: Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->access$000(Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$1;->this$0:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;

    # getter for: Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->outStatusListener:Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;
    invoke-static {v0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->access$100(Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;)Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 186
    invoke-virtual {v0}, Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;->onPause()V

    .line 189
    :cond_19
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$1;->this$0:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;

    # getter for: Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->newStateListener:Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayerStateListener;
    invoke-static {v0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->access$200(Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;)Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayerStateListener;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 191
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$1;->this$0:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;

    const/16 v1, 0x3ec

    invoke-interface {v0, p0, v1}, Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayerStateListener;->onChanged(Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayer;I)V

    :cond_28
    return-void
.end method

.method public onPlay()V
    .registers 3

    .line 167
    invoke-super {p0}, Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;->onPlay()V

    .line 168
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$1;->this$0:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;

    # getter for: Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->access$000(Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPlay"

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$1;->this$0:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;

    # getter for: Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->outStatusListener:Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;
    invoke-static {v0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->access$100(Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;)Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 171
    invoke-virtual {v0}, Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;->onPlay()V

    .line 174
    :cond_19
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$1;->this$0:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;

    # getter for: Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->newStateListener:Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayerStateListener;
    invoke-static {v0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->access$200(Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;)Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayerStateListener;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 176
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$1;->this$0:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;

    const/16 v1, 0x3ed

    invoke-interface {v0, p0, v1}, Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayerStateListener;->onChanged(Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayer;I)V

    :cond_28
    return-void
.end method

.method public onPlayEOF()V
    .registers 3

    .line 241
    invoke-super {p0}, Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;->onPlayEOF()V

    .line 242
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$1;->this$0:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;

    # getter for: Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->access$000(Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPlayEOF"

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$1;->this$0:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;

    # getter for: Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->outStatusListener:Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;
    invoke-static {v0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->access$100(Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;)Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 245
    invoke-virtual {v0}, Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;->onPlayEOF()V

    .line 247
    :cond_19
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$1;->this$0:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;

    # getter for: Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->newStateListener:Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayerStateListener;
    invoke-static {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->access$200(Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;)Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayerStateListener;

    move-result-object p0

    if-eqz p0, :cond_24

    .line 249
    invoke-interface {p0}, Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayerStateListener;->onPlayEOF()V

    :cond_24
    return-void
.end method

.method public onPlayProgress(J)V
    .registers 4

    .line 227
    invoke-super {p0, p1, p2}, Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;->onPlayProgress(J)V

    .line 228
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$1;->this$0:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;

    # getter for: Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->outStatusListener:Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;
    invoke-static {v0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->access$100(Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;)Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 230
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;->onPlayProgress(J)V

    .line 233
    :cond_e
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$1;->this$0:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;

    # getter for: Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->newStateListener:Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayerStateListener;
    invoke-static {v0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->access$200(Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;)Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayerStateListener;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 235
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$1;->this$0:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;

    invoke-interface {v0, p0, p1, p2}, Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayerStateListener;->onPlayProgress(Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayer;J)V

    :cond_1b
    return-void
.end method

.method public onPrepared()V
    .registers 3

    .line 212
    invoke-super {p0}, Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;->onPrepared()V

    .line 213
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$1;->this$0:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;

    # getter for: Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->access$000(Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPrepared"

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$1;->this$0:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;

    # getter for: Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->outStatusListener:Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;
    invoke-static {v0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->access$100(Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;)Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 216
    invoke-virtual {v0}, Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;->onPrepared()V

    .line 219
    :cond_19
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$1;->this$0:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;

    # getter for: Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->newStateListener:Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayerStateListener;
    invoke-static {v0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->access$200(Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;)Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayerStateListener;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 221
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$1;->this$0:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;

    const/16 v1, 0x3eb

    invoke-interface {v0, p0, v1}, Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayerStateListener;->onChanged(Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayer;I)V

    :cond_28
    return-void
.end method

.method public onStop()V
    .registers 3

    .line 197
    invoke-super {p0}, Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;->onStop()V

    .line 198
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$1;->this$0:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;

    # getter for: Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->access$000(Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/ss/android/ugc/cut_log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$1;->this$0:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;

    # getter for: Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->outStatusListener:Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;
    invoke-static {v0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->access$100(Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;)Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 201
    invoke-virtual {v0}, Lcom/bytedance/ies/cutsame/veadapter/TemplatePlayerStatusListener;->onStop()V

    .line 204
    :cond_19
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$1;->this$0:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;

    # getter for: Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->newStateListener:Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayerStateListener;
    invoke-static {v0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;->access$200(Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;)Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayerStateListener;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 206
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer$1;->this$0:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayer;

    const/16 v1, 0x3ec

    invoke-interface {v0, p0, v1}, Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayerStateListener;->onChanged(Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayer;I)V

    :cond_28
    return-void
.end method
