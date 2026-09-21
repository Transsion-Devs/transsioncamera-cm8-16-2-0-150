.class Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter$ItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;)V
    .registers 2

    .line 451
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(ILcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;Z)V
    .registers 9

    .line 454
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemClick, position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isClick: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->-$$Nest$fgetmSupportFreeShot(Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    if-eqz p1, :cond_52

    :cond_2b
    move v0, v1

    .line 457
    :goto_2c
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->-$$Nest$fgetmTemplateCategoryItems(Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_52

    .line 458
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->-$$Nest$fgetmTemplateCategoryItems(Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateCategoryItem;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateCategoryItem;->getItemList()Ljava/util/List;

    move-result-object v2

    .line 459
    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    goto :goto_53

    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    :cond_52
    move v0, v1

    .line 466
    :goto_53
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->-$$Nest$fgetmSupportFreeShot(Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;)Z

    move-result v2

    if-eqz v2, :cond_5f

    if-eqz p1, :cond_5f

    add-int/lit8 v0, v0, 0x1

    .line 470
    :cond_5f
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onItemClick, indicatorPosition: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 472
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->-$$Nest$fgetmStoreMonitor(Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;)Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;

    move-result-object v2

    if-eqz v2, :cond_9e

    .line 473
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->-$$Nest$fgetmStoreMonitor(Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;)Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;->storeTemplateIndex(I)V

    .line 474
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->-$$Nest$fgetmTemplateIndicatorScrollView(Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;)Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;

    move-result-object p1

    if-eqz p3, :cond_91

    goto :goto_9b

    :cond_91
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;

    invoke-static {p3}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->-$$Nest$fgetmStoreMonitor(Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;)Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;

    move-result-object p3

    invoke-interface {p3}, Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;->getIndicatorIndex()I

    move-result v0

    :goto_9b
    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;->setCurrentItem(IZ)V

    .line 476
    :cond_9e
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->-$$Nest$fgetmTemplateListener(Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;)Lcom/transsion/camera/feature/mode/vlog/ui/homepage/IHomePage$ITemplateListener;

    move-result-object p1

    if-eqz p1, :cond_b7

    .line 477
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->-$$Nest$fgetmTemplateListener(Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;)Lcom/transsion/camera/feature/mode/vlog/ui/homepage/IHomePage$ITemplateListener;

    move-result-object p0

    if-eqz p2, :cond_b3

    invoke-virtual {p2}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->copy()Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    move-result-object p1

    goto :goto_b4

    :cond_b3
    const/4 p1, 0x0

    :goto_b4
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/IHomePage$ITemplateListener;->onTemplateSelect(Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;)V

    :cond_b7
    return-void
.end method
