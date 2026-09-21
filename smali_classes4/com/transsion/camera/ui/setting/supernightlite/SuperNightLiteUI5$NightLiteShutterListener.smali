.class final Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5$NightLiteShutterListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NightLiteShutterListener"
.end annotation


# instance fields
.field private final mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;",
            ">;"
        }
    .end annotation
.end field

.field private final mListener:Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;)V
    .registers 4

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5$NightLiteShutterListener;->mContext:Ljava/lang/ref/WeakReference;

    .line 161
    iput-object p2, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5$NightLiteShutterListener;->mListener:Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;

    return-void
.end method


# virtual methods
.method public onShutterCancel()V
    .registers 1

    .line 203
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5$NightLiteShutterListener;->mListener:Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;

    if-eqz p0, :cond_7

    .line 204
    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;->onShutterCancel()V

    :cond_7
    return-void
.end method

.method public onShutterClick(II)Z
    .registers 8

    .line 166
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5$NightLiteShutterListener;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_27

    .line 168
    invoke-static {}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v3

    const-string v4, "onShutterClick"

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 169
    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->superNightLiteOn()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->nightLiteSwitch()Z

    move-result v3

    if-eqz v3, :cond_23

    move v3, v2

    goto :goto_24

    :cond_23
    move v3, v1

    :goto_24
    invoke-virtual {v0, v3}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;->setNightLiteCaptureEnable(Z)V

    .line 171
    :cond_27
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5$NightLiteShutterListener;->mListener:Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;

    if-eqz p0, :cond_32

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;->onShutterClick(II)Z

    move-result p0

    if-eqz p0, :cond_32

    return v2

    :cond_32
    return v1
.end method

.method public onShutterDown()V
    .registers 3

    .line 181
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5$NightLiteShutterListener;->mListener:Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;

    if-eqz v0, :cond_7

    .line 182
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;->onShutterDown()V

    .line 184
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5$NightLiteShutterListener;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;

    if-eqz p0, :cond_41

    .line 186
    invoke-static {}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onShutterDown"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->superNightLiteOn()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->nightLiteSwitch()Z

    move-result v0

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;->setNightLiteCaptureEnable(Z)V

    .line 188
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;->isNightLiteCaptureEnable()Z

    move-result v0

    if-eqz v0, :cond_41

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;->access$000(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 189
    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;->access$100(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    const/16 v0, 0x178

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_41
    return-void
.end method

.method public onShutterLongClick(II)Z
    .registers 3

    .line 176
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5$NightLiteShutterListener;->mListener:Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;

    if-eqz p0, :cond_c

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;->onShutterLongClick(II)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public onShutterUp(I)V
    .registers 2

    .line 196
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5$NightLiteShutterListener;->mListener:Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;

    if-eqz p0, :cond_7

    .line 197
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;->onShutterUp(I)V

    :cond_7
    return-void
.end method
