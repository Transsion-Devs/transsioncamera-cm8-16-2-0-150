.class Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$PMasterSkinSecondMenuImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu$SecondMenuStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PMasterSkinSecondMenuImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)V
    .registers 2

    .line 2363
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$PMasterSkinSecondMenuImpl;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$PMasterSkinSecondMenuImpl;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)V

    return-void
.end method


# virtual methods
.method public onSecondMenuDismissed(Z)V
    .registers 2

    return-void
.end method

.method public onSecondMenuIndexChanged(I)V
    .registers 6

    .line 2366
    invoke-static {}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$sfgetSKIN_COLOR_LIST()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;

    if-nez v0, :cond_d

    return-void

    .line 2370
    :cond_d
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$PMasterSkinSecondMenuImpl;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    iget-object v2, v0, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;->key:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fputmCurrentFeatureKey(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Ljava/lang/String;)V

    .line 2371
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$PMasterSkinSecondMenuImpl;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    iget-object v2, v0, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;->key:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fputmCurrentSkinColorFeatureKey(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Ljava/lang/String;)V

    .line 2372
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$PMasterSkinSecondMenuImpl;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;
    invoke-static {v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->access$5100(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSecondMenuIndexChanged, index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", FeatureKey:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$PMasterSkinSecondMenuImpl;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmCurrentFeatureKey(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", SkinColorFeatureKey:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$PMasterSkinSecondMenuImpl;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmCurrentSkinColorFeatureKey(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2373
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$PMasterSkinSecondMenuImpl;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    const-string v1, "key_facebeauty_remember"

    const/4 v2, 0x0

    # invokes: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->rememberValue(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v1, v2}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->access$5200(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Ljava/lang/String;Ljava/lang/String;)V

    .line 2374
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$PMasterSkinSecondMenuImpl;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mIsFaceBeautyConflictWithMakeUp:Z
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->access$5300(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Z

    move-result p1

    if-eqz p1, :cond_68

    .line 2375
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$PMasterSkinSecondMenuImpl;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    const-string v1, "key_makeup_remember"

    # invokes: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->rememberValue(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v1, v2}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->access$5400(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Ljava/lang/String;Ljava/lang/String;)V

    .line 2377
    :cond_68
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$PMasterSkinSecondMenuImpl;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    iget-object v1, v0, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;->key:Ljava/lang/String;

    iget v2, v0, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;->featureId:I

    invoke-static {p1, v1, v2}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$mupdateSetting(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Ljava/lang/String;I)V

    .line 2378
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$PMasterSkinSecondMenuImpl;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$mupdateSeekBarUI(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)V

    .line 2379
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$PMasterSkinSecondMenuImpl;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->access$5500(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getKey()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->closeBlurByConflict(Ljava/lang/String;)V
    invoke-static {p1, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->access$5600(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Ljava/lang/String;)V

    .line 2380
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$PMasterSkinSecondMenuImpl;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmSkinColorGroup(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Group;

    .line 2381
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$PMasterSkinSecondMenuImpl;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmCurrentSkinColorFeatureKey(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Group;->selectKey:Ljava/lang/String;

    .line 2382
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$PMasterSkinSecondMenuImpl;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmSkinSecondMenu(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;

    move-result-object p1

    if-eqz p1, :cond_d3

    .line 2383
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$PMasterSkinSecondMenuImpl;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->access$5800(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$PMasterSkinSecondMenuImpl;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmCurrentFeatureKey(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$PMasterSkinSecondMenuImpl;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmCurrentFeatureKey(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$mgetDefaultValue(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$PMasterSkinSecondMenuImpl;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;
    invoke-static {v3}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->access$5700(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v3

    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 2384
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$PMasterSkinSecondMenuImpl;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmSkinSecondMenu(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$PMasterSkinSecondMenuImpl;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmCurrentFeatureKey(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p1, v3}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->updateCurItemProgress(Ljava/lang/String;IZ)V

    .line 2386
    :cond_d3
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$PMasterSkinSecondMenuImpl;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmCurrentFeatureKey(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Ljava/lang/String;

    move-result-object p1

    iget v0, v0, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;->featureId:I

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$mupdateItemProgress(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Ljava/lang/String;IZ)V

    return-void
.end method

.method public onSecondMenuQuit()V
    .registers 5

    .line 2399
    invoke-static {}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onSecondMenuQuit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2400
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$PMasterSkinSecondMenuImpl;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmCurrentFeatureKey(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$mupdateItemProgress(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Ljava/lang/String;IZ)V

    .line 2401
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$PMasterSkinSecondMenuImpl;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmSkinSecondMenu(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 2402
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$PMasterSkinSecondMenuImpl;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmSkinSecondMenu(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->hideSkinSecondMenu()V

    .line 2404
    :cond_25
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 2405
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$PMasterSkinSecondMenuImpl;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmRecyclerView(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$mshowRecyclerViewAnim(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Landroidx/recyclerview/widget/RecyclerView;)V

    goto :goto_46

    .line 2407
    :cond_35
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$PMasterSkinSecondMenuImpl;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmRecyclerView(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 2408
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$PMasterSkinSecondMenuImpl;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmRecyclerView(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2411
    :cond_46
    :goto_46
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$PMasterSkinSecondMenuImpl;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmRecyclerViewAdapter(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 2412
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$PMasterSkinSecondMenuImpl;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmRecyclerViewAdapter(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_57
    return-void
.end method

.method public onSecondMenuShowed()V
    .registers 1

    return-void
.end method
