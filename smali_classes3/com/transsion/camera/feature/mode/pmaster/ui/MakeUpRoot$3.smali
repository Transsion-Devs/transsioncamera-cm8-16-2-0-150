.class Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->registerSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;)V
    .registers 2

    .line 252
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot$3;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;I)V
    .registers 8

    .line 255
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot$3;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;

    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->access$400(Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemClick "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",EffectButtonItem: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot$3;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->-$$Nest$fgetmEffectButtonItem(Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;)Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->getId()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot$3;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;

    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 256
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot$3;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;

    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-nez p2, :cond_58

    .line 257
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot$3;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;

    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->access$500(Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "onItemClick,return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 260
    :cond_58
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->getId()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_65

    .line 261
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot$3;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->-$$Nest$mshowDialog(Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;)V

    return-void

    .line 264
    :cond_65
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->getId()I

    move-result p2

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_6f

    const/4 p2, 0x1

    goto :goto_70

    :cond_6f
    move p2, v1

    .line 265
    :goto_70
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot$3;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;

    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->access$700(Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    if-eqz p2, :cond_7b

    .line 266
    const-string v2, "closed_reason_user"

    goto :goto_7c

    :cond_7b
    const/4 v2, 0x0

    :goto_7c
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot$3;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;

    .line 267
    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;
    invoke-static {v3}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->access$600(Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v3

    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    .line 265
    const-string v4, "key_mu_makeup_closed_reason"

    invoke-virtual {v0, v4, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 268
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot$3;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;

    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->access$800(Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemClick, isClosed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 269
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot$3;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->-$$Nest$mdoOnItemClicked(Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;)V

    return-void
.end method
