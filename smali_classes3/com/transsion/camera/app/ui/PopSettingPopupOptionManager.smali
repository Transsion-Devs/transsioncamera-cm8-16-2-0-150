.class public Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mNeedShowPopUpOption:Z

.field private mPopupMap:Ljava/util/HashMap;

.field private mPopupStateMap:Ljava/util/HashMap;

.field private showViewKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 10
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "PopSettingOptMgr"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;->mPopupMap:Ljava/util/HashMap;

    .line 13
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;->mPopupStateMap:Ljava/util/HashMap;

    .line 19
    sget-object p0, Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "PopSettingPopupOptionManager "

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addPopupOption(Lcom/transsion/camera/app/ui/setting/AbstractPopupOption;)V
    .registers 5

    .line 23
    sget-object v0, Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addPopupOption    popupOption.getTag() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/setting/AbstractPopupOption;->getTag()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "    popupOption = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;->mPopupMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/setting/AbstractPopupOption;->getTag()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;->mPopupStateMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/setting/AbstractPopupOption;->getTag()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public dismissAllPopupOption()Z
    .registers 7

    .line 76
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;->mPopupStateMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 77
    sget-object v3, Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "t  =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 78
    iget-object v3, p0, Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;->mPopupStateMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 79
    iget-object v3, p0, Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;->mPopupMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/setting/AbstractPopupOption;

    if-eqz v2, :cond_b

    .line 80
    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/setting/AbstractPopupOption;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 82
    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/setting/AbstractPopupOption;->onDismiss()V

    .line 83
    check-cast v2, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->dismissPopup()V

    const/4 v1, 0x1

    goto :goto_b

    :cond_55
    return v1
.end method

.method public getCurrentShowView()Ljava/lang/String;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;->showViewKey:Ljava/lang/String;

    return-object p0
.end method

.method public needShowPopUpOption()Z
    .registers 4

    .line 66
    sget-object v0, Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needShowPopUpOption  mNeedShowPopUpOption = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;->mNeedShowPopUpOption:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 67
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;->mNeedShowPopUpOption:Z

    return p0
.end method

.method public onPopupDismiss(I)V
    .registers 4

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;->mPopupStateMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object p0, Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPopupDismiss  tag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onPopupShow(ILjava/lang/String;)V
    .registers 6

    .line 29
    sget-object v0, Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPopupShow  tag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;->mPopupStateMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iput-object p2, p0, Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;->showViewKey:Ljava/lang/String;

    .line 32
    iget-object p2, p0, Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;->mPopupStateMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2d
    :goto_2d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 33
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, p1, :cond_2d

    iget-object v1, p0, Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;->mPopupStateMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 34
    iget-object v1, p0, Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;->mPopupMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/setting/AbstractPopupOption;

    if-eqz v0, :cond_2d

    .line 36
    check-cast v0, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/setting/PopSettingPopupOption;->dismissPopupWithoutAnimation()V

    goto :goto_2d

    :cond_5d
    return-void
.end method

.method public setNeedShowPopUpOption(Z)V
    .registers 2

    .line 61
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;->mNeedShowPopUpOption:Z

    return-void
.end method

.method public updatePopupOptionShow()Z
    .registers 7

    .line 49
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;->mPopupStateMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 50
    sget-object v3, Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasPopupOptionShow  isShow = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez v1, :cond_b

    move v1, v2

    goto :goto_b

    .line 55
    :cond_35
    sget-object v0, Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasPopupOptionShow  hasShow = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 56
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;->mNeedShowPopUpOption:Z

    return v1
.end method
