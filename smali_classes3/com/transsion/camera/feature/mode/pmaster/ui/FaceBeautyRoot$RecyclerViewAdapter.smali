.class public Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;
.super Lcom/transsion/camera/feature/mode/pmaster/adapter/ExpandableItemAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecyclerViewAdapter"
.end annotation


# instance fields
.field private mLowLight:Z

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;


# direct methods
.method public static synthetic $r8$lambda$_ejubNW6ZiVx4BFh9IV4E-dUk9Y(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->lambda$onBindViewHolder$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p-WtooL1Oo1wFzzWYyQ6isLRSIE(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Group;ILandroid/view/View;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->lambda$onBindViewHolder$0(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Group;ILandroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckCloseBlur(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;II)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->checkCloseBlur(II)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)V
    .registers 2

    .line 1789
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/adapter/ExpandableItemAdapter;-><init>()V

    const/4 p1, 0x0

    .line 1790
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->mLowLight:Z

    return-void
.end method

.method private checkCloseBlur(II)V
    .registers 3

    if-nez p1, :cond_11

    if-eqz p2, :cond_11

    .line 2172
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->access$2800(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getKey()Ljava/lang/String;

    move-result-object p1

    # invokes: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->closeBlurByConflict(Ljava/lang/String;)V
    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->access$2900(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Group;ILandroid/view/View;)V
    .registers 10

    .line 1956
    invoke-static {p3}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p3

    if-nez p3, :cond_8

    goto/16 :goto_94

    .line 1959
    :cond_8
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p3

    if-nez p3, :cond_12

    .line 1960
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/adapter/ExpandableItemAdapter;->toggle(Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;)V

    return-void

    .line 1962
    :cond_12
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->access$3100(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string p3, "onBindViewHolder,TYPE_GROUP need show secondary menu"

    invoke-static {p1, p3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1963
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fputmSelectedPostion(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;I)V

    .line 1964
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmRecyclerView(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1965
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/app/common/CommonConfigUtil;->mFaceBeautyV3:Z

    if-eqz p1, :cond_74

    .line 1966
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmSkinColorMenu(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;

    move-result-object p1

    if-eqz p1, :cond_127

    .line 1967
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    const-string/jumbo p2, "whiten"

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fputmCurrentFeatureKey(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Ljava/lang/String;)V

    .line 1968
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->access$3300(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {p3, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$mgetDefaultValue(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;
    invoke-static {p3}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->access$3200(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p3

    invoke-interface {p3}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object p3

    const-string v0, "face_beauty_whiten_skin_card"

    invoke-virtual {p1, v0, p2, p3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1969
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$smparseValue(Ljava/lang/String;)I

    move-result p1

    .line 1970
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {p2, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$mupdateSkinColorCardValue(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;I)V

    .line 1971
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmSkinColorMenu(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->showSkinColorMenu()V

    goto/16 :goto_127

    .line 1974
    :cond_74
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmCurrentSkinColorFeatureKey(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_da

    invoke-static {}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$sfgetSKIN_COLOR_LIST()Ljava/util/List;

    move-result-object p1

    const/4 p3, 0x0

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_da

    .line 1975
    invoke-static {}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$sfgetSKIN_COLOR_LIST()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;

    if-nez p1, :cond_95

    :goto_94
    return-void

    .line 1979
    :cond_95
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    iget-object v0, p1, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;->key:Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fputmCurrentSkinColorFeatureKey(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Ljava/lang/String;)V

    .line 1980
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    const-string v0, "key_facebeauty_remember"

    # invokes: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->rememberValue(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p3, v0, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->access$3400(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Ljava/lang/String;Ljava/lang/String;)V

    .line 1981
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mIsFaceBeautyConflictWithMakeUp:Z
    invoke-static {p3}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->access$3500(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Z

    move-result p3

    if-eqz p3, :cond_b2

    .line 1982
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    const-string v0, "key_makeup_remember"

    # invokes: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->rememberValue(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p3, v0, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->access$3600(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Ljava/lang/String;Ljava/lang/String;)V

    .line 1984
    :cond_b2
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    iget-object v0, p1, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;->key:Ljava/lang/String;

    iget p1, p1, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;->featureId:I

    invoke-static {p3, v0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$mupdateSetting(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Ljava/lang/String;I)V

    .line 1985
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->access$3700(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p3

    invoke-interface {p3}, Lcom/transsion/camera/app/common/setting/ISetting;->getKey()Ljava/lang/String;

    move-result-object p3

    # invokes: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->closeBlurByConflict(Ljava/lang/String;)V
    invoke-static {p1, p3}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->access$3800(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Ljava/lang/String;)V

    .line 1986
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmSkinColorGroup(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Group;

    if-eqz p1, :cond_da

    .line 1988
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {p3}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmCurrentSkinColorFeatureKey(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Group;->selectKey:Ljava/lang/String;

    .line 1992
    :cond_da
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmCurrentSkinColorFeatureKey(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fputmCurrentFeatureKey(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Ljava/lang/String;)V

    .line 1994
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$mupdateSkinColorItemProgress(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)V

    .line 1995
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmSkinSecondMenu(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;

    move-result-object p1

    if-eqz p1, :cond_127

    .line 1996
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmSkinSecondMenu(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;

    move-result-object p1

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mParentLayout:Landroid/view/ViewGroup;
    invoke-static {p3}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->access$3900(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Landroid/view/ViewGroup;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->setEntryRootView(Landroid/view/ViewGroup;)V

    .line 1997
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmSkinSecondMenu(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;

    move-result-object v0

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmSkinColorGroup(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$PMasterSkinSecondMenuImpl;

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-direct {v2, p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$PMasterSkinSecondMenuImpl;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot-IA;)V

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmCurrentSkinColorFeatureKey(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mScreenFormType:I
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->access$4000(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)I

    move-result v4

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mOrientation:I
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->access$4100(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->showSkinSecondMenu(Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu$SecondMenuStateCallback;Ljava/lang/String;II)V

    .line 2000
    :cond_127
    :goto_127
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$mupdateSeekBarUI(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(Landroid/view/View;)V
    .registers 2

    .line 2132
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_14

    .line 2133
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->access$3000(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "onItemClick,return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2136
    :cond_14
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$mshowDialog(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 1789
    check-cast p1, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->onBindViewHolder(Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;I)V
    .registers 13

    .line 1880
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 1882
    new-instance v0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter$1;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;)V

    .line 1892
    iget-object v2, p1, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mContainer:Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;

    const/4 v3, 0x7

    if-eqz v2, :cond_cd

    .line 1893
    sget v4, Lcom/transsion/camera/feature/pmaster/R$id;->mu_item_layout:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 1894
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 1895
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {v5}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$misExpandedState(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Z

    move-result v5

    const/16 v6, 0x5a

    if-eqz v5, :cond_49

    .line 1896
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/transsion/camera/feature/pmaster/R$dimen;->mu_big_item_expand_width:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1897
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/transsion/camera/feature/pmaster/R$dimen;->mu_big_item_expand_height:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1898
    iget-object v5, p1, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mContainer:Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;

    invoke-virtual {v5, v6, v1}, Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;->setOrientation(IZ)V

    goto/16 :goto_ca

    .line 1899
    :cond_49
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mScreenFormType:I
    invoke-static {v5}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->access$700(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)I

    move-result v5

    if-ne v5, v3, :cond_8f

    .line 1900
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/transsion/camera/feature/pmaster/R$dimen;->pmu_big_item_width_flip:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1901
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/transsion/camera/feature/pmaster/R$dimen;->pmu_feature_height_flip:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1902
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mOrientation:I
    invoke-static {v5}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->access$800(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)I

    move-result v5

    if-eq v5, v6, :cond_7f

    const/16 v6, 0x10e

    if-eq v5, v6, :cond_7f

    .line 1910
    iget-object v5, p1, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mContainer:Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;

    invoke-virtual {v5, v1, v1}, Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;->setOrientation(IZ)V

    goto :goto_ca

    .line 1905
    :cond_7f
    iget-object v5, p1, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mContainer:Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;

    iget-object v6, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mOrientation:I
    invoke-static {v6}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->access$900(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)I

    move-result v6

    add-int/lit16 v6, v6, 0xb4

    rem-int/lit16 v6, v6, 0x168

    invoke-virtual {v5, v6, v1}, Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;->setOrientation(IZ)V

    goto :goto_ca

    .line 1914
    :cond_8f
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/transsion/camera/feature/pmaster/R$dimen;->pmu_big_item_width:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1915
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/transsion/camera/feature/pmaster/R$dimen;->pmu_feature_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1916
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v5

    if-eqz v5, :cond_c5

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mScreenFormType:I
    invoke-static {v5}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->access$1000(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)I

    move-result v5

    if-nez v5, :cond_c5

    .line 1917
    iget-object v5, p1, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mContainer:Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;

    iget-object v6, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mOrientation:I
    invoke-static {v6}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->access$1100(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)I

    move-result v6

    invoke-virtual {v5, v6, v1}, Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;->setOrientation(IZ)V

    goto :goto_ca

    .line 1919
    :cond_c5
    iget-object v5, p1, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mContainer:Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;

    invoke-virtual {v5, v1, v1}, Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;->setOrientation(IZ)V

    .line 1922
    :goto_ca
    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1926
    :cond_cd
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemAdapter;->getItem(I)Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;

    move-result-object v2

    .line 1927
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemAdapter;->getItemViewType(I)I

    move-result v4

    const v5, 0x3f4ccccd    # 0.8f

    packed-switch v4, :pswitch_data_51c

    return-void

    .line 2060
    :pswitch_dc
    check-cast v2, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Skin;

    .line 2061
    move-object v4, p1

    check-cast v4, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$SkinVH;

    .line 2062
    iget-object v6, v4, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 2063
    iget-object v7, v4, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 2064
    iget-object v8, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mScreenFormType:I
    invoke-static {v8}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->access$2000(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)I

    move-result v8

    if-ne v8, v3, :cond_140

    .line 2065
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v8, Lcom/transsion/camera/feature/pmaster/R$dimen;->mu_skin_item_size_flip:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2066
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v8, Lcom/transsion/camera/feature/pmaster/R$dimen;->mu_skin_item_size_flip:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2067
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v8, Lcom/transsion/camera/feature/pmaster/R$dimen;->mu_item_title_width_flip:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2068
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v8, Lcom/transsion/camera/feature/pmaster/R$dimen;->pmu_item_title_height_flip:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2069
    iget-object v3, v4, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mTitleView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {v8}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/transsion/camera/feature/pmaster/R$dimen;->mu_item_title_text_size_flip:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v3, v1, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_18a

    .line 2071
    :cond_140
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v8, Lcom/transsion/camera/feature/pmaster/R$dimen;->mu_skin_item_size:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2072
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v8, Lcom/transsion/camera/feature/pmaster/R$dimen;->mu_skin_item_size:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2073
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v8, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->mu_item_title_width:I

    .line 2074
    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2076
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v8, Lcom/transsion/camera/feature/pmaster/R$dimen;->pmu_item_title_height:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2077
    iget-object v3, v4, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mTitleView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {v8}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/transsion/camera/feature/pmaster/R$dimen;->mu_item_title_text_size:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v3, v1, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2079
    :goto_18a
    iget-object v1, v4, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2080
    iget-object v1, v4, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2081
    iget-object v1, v4, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mIconView:Landroid/widget/ImageView;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Skin;->-$$Nest$fgetdrawableId(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Skin;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2082
    iget-object v1, v4, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mTitleView:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Skin;->-$$Nest$fgettitle(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Skin;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2083
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->mLowLight:Z

    invoke-virtual {v4, v2, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$SkinVH;->bindHolder(Ljava/lang/Object;Z)V

    .line 2084
    iget-object v1, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v3, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter$3;

    invoke-direct {v3, p0, v2, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter$3;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Skin;I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2102
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p0, v5, v0}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    return-void

    .line 2141
    :pswitch_1bb
    check-cast v2, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Footer;

    .line 2142
    check-cast p1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$FooterVH;

    .line 2143
    iget-object p2, p1, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mContainer:Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;

    if-eqz p2, :cond_25e

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p2

    if-nez p2, :cond_25e

    .line 2144
    iget-object p2, p1, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mContainer:Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;

    sget v0, Lcom/transsion/camera/feature/pmaster/R$id;->mu_item_footer_layout:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 2145
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2146
    iget-object v1, p1, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 2147
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mScreenFormType:I
    invoke-static {v4}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->access$2700(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)I

    move-result v4

    if-ne v4, v3, :cond_21e

    .line 2148
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/pmaster/R$dimen;->mu_item_size_flip:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2149
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/pmaster/R$dimen;->mu_feature_height_flip:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2150
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/pmaster/R$dimen;->mu_item_size_flip:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2151
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/pmaster/R$dimen;->mu_item_size_flip:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_256

    .line 2153
    :cond_21e
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/pmaster/R$dimen;->mu_item_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2154
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/pmaster/R$dimen;->mu_feature_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2155
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/pmaster/R$dimen;->mu_item_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2156
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/pmaster/R$dimen;->mu_item_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2158
    :goto_256
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2159
    iget-object p2, p1, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2161
    :cond_25e
    iget-object p1, p1, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mIconView:Landroid/widget/ImageView;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->mLowLight:Z

    if-eqz p0, :cond_267

    iget p0, v2, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Footer;->blackDrawableId:I

    goto :goto_269

    :cond_267
    iget p0, v2, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Footer;->drawableId:I

    :goto_269
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 2105
    :pswitch_26d
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;
    invoke-static {v4}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->access$2500(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onBindViewHolder,TYPE_RESET:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2106
    check-cast v2, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Reset;

    .line 2107
    move-object p2, p1

    check-cast p2, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$ResetVH;

    .line 2108
    iget-object v4, p2, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 2109
    iget-object v6, p2, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 2110
    iget-object v7, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mScreenFormType:I
    invoke-static {v7}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->access$2600(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)I

    move-result v7

    if-ne v7, v3, :cond_2eb

    .line 2111
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v7, Lcom/transsion/camera/feature/pmaster/R$dimen;->mu_item_size_flip:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2112
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v7, Lcom/transsion/camera/feature/pmaster/R$dimen;->mu_item_size_flip:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2113
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v7, Lcom/transsion/camera/feature/pmaster/R$dimen;->mu_item_title_width_flip:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2114
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v7, Lcom/transsion/camera/feature/pmaster/R$dimen;->mu_item_title_height_flip:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2115
    iget-object v3, p2, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mTitleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/transsion/camera/feature/pmaster/R$dimen;->mu_item_title_text_size_flip:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v3, v1, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_335

    .line 2117
    :cond_2eb
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v7, Lcom/transsion/camera/feature/pmaster/R$dimen;->mu_item_size:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2118
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v7, Lcom/transsion/camera/feature/pmaster/R$dimen;->mu_item_size:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2119
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v7, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->mu_item_title_width:I

    .line 2120
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2122
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v7, Lcom/transsion/camera/feature/pmaster/R$dimen;->pm_item_title_height:I

    .line 2123
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2124
    iget-object v3, p2, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mTitleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/transsion/camera/feature/pmaster/R$dimen;->mu_item_title_text_size:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v3, v1, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2126
    :goto_335
    iget-object v1, p2, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2127
    iget-object v1, p2, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2128
    iget-object v1, p2, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mIconView:Landroid/widget/ImageView;

    iget v3, v2, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Reset;->drawableId:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2129
    iget-object v1, p2, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mTitleView:Landroid/widget/TextView;

    iget-object v3, v2, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Reset;->title:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2130
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->mLowLight:Z

    invoke-virtual {p2, v2, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$ResetVH;->bindHolder(Ljava/lang/Object;Z)V

    .line 2131
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2138
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p0, v5, v0}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    return-void

    .line 2006
    :pswitch_362
    check-cast v2, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;

    .line 2007
    move-object v4, p1

    check-cast v4, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$ChildVH;

    .line 2008
    iget-object v6, v4, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 2009
    iget-object v7, v4, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 2010
    iget-object v8, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mScreenFormType:I
    invoke-static {v8}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->access$1300(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)I

    move-result v8

    if-ne v8, v3, :cond_3c6

    .line 2011
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v8, Lcom/transsion/camera/feature/pmaster/R$dimen;->mu_item_size_flip:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2012
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v8, Lcom/transsion/camera/feature/pmaster/R$dimen;->mu_item_size_flip:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2013
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v8, Lcom/transsion/camera/feature/pmaster/R$dimen;->mu_item_title_width_flip:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2014
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v8, Lcom/transsion/camera/feature/pmaster/R$dimen;->mu_item_title_height_flip:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2015
    iget-object v3, v4, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mTitleView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {v8}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/transsion/camera/feature/pmaster/R$dimen;->mu_item_title_text_size_flip:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v3, v1, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_410

    .line 2017
    :cond_3c6
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v8, Lcom/transsion/camera/feature/pmaster/R$dimen;->mu_item_size:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2018
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v8, Lcom/transsion/camera/feature/pmaster/R$dimen;->mu_item_size:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2019
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v8, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->mu_item_title_width:I

    .line 2020
    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2022
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v8, Lcom/transsion/camera/feature/pmaster/R$dimen;->pm_item_title_height:I

    .line 2023
    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2024
    iget-object v3, v4, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mTitleView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {v8}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/transsion/camera/feature/pmaster/R$dimen;->mu_item_title_text_size:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v3, v1, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2026
    :goto_410
    iget-object v1, v4, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2027
    iget-object v1, v4, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2028
    iget-object v1, v4, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mIconView:Landroid/widget/ImageView;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;->-$$Nest$fgetdrawableId(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2029
    iget-object v1, v4, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mTitleView:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;->-$$Nest$fgettitle(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2030
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->mLowLight:Z

    invoke-virtual {v4, v2, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$ChildVH;->bindHolder(Ljava/lang/Object;Z)V

    .line 2031
    iget-object v1, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v3, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter$2;

    invoke-direct {v3, p0, v2, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter$2;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2057
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p0, v5, v0}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    return-void

    .line 1929
    :pswitch_441
    check-cast v2, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Group;

    .line 1930
    move-object v4, p1

    check-cast v4, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$GroupVH;

    .line 1931
    iget-object v6, v4, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 1932
    iget-object v7, v4, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 1933
    iget-object v8, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mScreenFormType:I
    invoke-static {v8}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->access$1200(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)I

    move-result v8

    if-ne v8, v3, :cond_4a5

    .line 1934
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v8, Lcom/transsion/camera/feature/pmaster/R$dimen;->mu_item_size_flip:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1935
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v8, Lcom/transsion/camera/feature/pmaster/R$dimen;->mu_item_size_flip:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1936
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v8, Lcom/transsion/camera/feature/pmaster/R$dimen;->mu_item_title_width_flip:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1937
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v8, Lcom/transsion/camera/feature/pmaster/R$dimen;->mu_item_title_height_flip:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1938
    iget-object v3, v4, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mTitleView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {v8}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/transsion/camera/feature/pmaster/R$dimen;->mu_item_title_text_size_flip:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v3, v1, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_4ef

    .line 1940
    :cond_4a5
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v8, Lcom/transsion/camera/feature/pmaster/R$dimen;->mu_item_size:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1941
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v8, Lcom/transsion/camera/feature/pmaster/R$dimen;->mu_item_size:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1942
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v8, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->mu_item_title_width:I

    .line 1943
    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1945
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v8, Lcom/transsion/camera/feature/pmaster/R$dimen;->pm_item_title_height:I

    .line 1946
    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1947
    iget-object v3, v4, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mTitleView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {v8}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/transsion/camera/feature/pmaster/R$dimen;->mu_item_title_text_size:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v3, v1, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1949
    :goto_4ef
    iget-object v1, v4, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1950
    iget-object v1, v4, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1951
    iget-object v1, v4, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mIconView:Landroid/widget/ImageView;

    iget v3, v2, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Group;->drawableId:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1952
    iget-object v1, v4, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;->mTitleView:Landroid/widget/TextView;

    iget-object v3, v2, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Group;->title:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1953
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->mLowLight:Z

    invoke-virtual {v4, v2, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$GroupVH;->bindHolder(Ljava/lang/Object;Z)V

    .line 1955
    iget-object v1, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v3, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v2, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Group;I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2003
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p0, v5, v0}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    return-void

    :pswitch_data_51c
    .packed-switch 0xfa01
        :pswitch_441
        :pswitch_362
        :pswitch_26d
        :pswitch_1bb
        :pswitch_dc
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 1789
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;
    .registers 5

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_8a

    const/4 p0, 0x0

    return-object p0

    .line 1820
    :pswitch_6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/transsion/camera/feature/pmaster/R$layout;->pmaster_feature_skin_item:I

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 1821
    new-instance p2, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$SkinVH;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$SkinVH;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Landroid/view/View;)V

    return-object p2

    .line 1811
    :pswitch_1c
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-nez p2, :cond_2e

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p2

    if-eqz p2, :cond_2b

    goto :goto_2e

    .line 1814
    :cond_2b
    sget p2, Lcom/transsion/camera/feature/pmaster/R$layout;->pmaster_footer_layout:I

    goto :goto_30

    .line 1812
    :cond_2e
    :goto_2e
    sget p2, Lcom/transsion/camera/feature/pmaster/R$layout;->pmaster_footer_layout_ui4:I

    .line 1816
    :goto_30
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 1817
    new-instance p2, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$FooterVH;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$FooterVH;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Landroid/view/View;)V

    return-object p2

    .line 1806
    :pswitch_44
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/transsion/camera/feature/pmaster/R$layout;->pmaster_restore_layout:I

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 1807
    new-instance p2, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$ResetVH;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$ResetVH;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Landroid/view/View;)V

    return-object p2

    .line 1802
    :pswitch_5a
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$sfgetITEM_LAYOUT_ID()I

    move-result v1

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 1803
    new-instance p2, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$ChildVH;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$ChildVH;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Landroid/view/View;)V

    return-object p2

    .line 1798
    :pswitch_72
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$sfgetITEM_LAYOUT_ID()I

    move-result v1

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 1799
    new-instance p2, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$GroupVH;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$GroupVH;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;Landroid/view/View;)V

    return-object p2

    :pswitch_data_8a
    .packed-switch 0xfa01
        :pswitch_72
        :pswitch_5a
        :pswitch_44
        :pswitch_1c
        :pswitch_6
    .end packed-switch
.end method

.method public previewRatioChange()V
    .registers 1

    .line 2177
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setItemEnable(Z)V
    .registers 5

    .line 1828
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmRecyclerViewAdapter(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_2a

    .line 1831
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmRecyclerViewAdapter(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v0, :cond_2a

    .line 1833
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmRecyclerView(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_27

    .line 1835
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_2a
    :goto_2a
    return-void
.end method

.method public updateLowLight(Z)V
    .registers 2

    .line 2167
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$RecyclerViewAdapter;->mLowLight:Z

    .line 2168
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateSelectItemProgress(Ljava/lang/String;IZ)V
    .registers 11

    .line 1841
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_60

    .line 1844
    :cond_7
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemAdapter;->getAllItem()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :cond_11
    :goto_11
    if-ge v2, v0, :cond_60

    .line 1846
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;

    .line 1847
    invoke-virtual {v3}, Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;->getType()I

    move-result v4

    const v5, 0xfa01

    const v6, 0xfa02

    if-eq v4, v6, :cond_2e

    invoke-virtual {v3}, Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;->getType()I

    move-result v4

    if-eq v4, v5, :cond_2e

    goto :goto_11

    .line 1850
    :cond_2e
    invoke-virtual {v3}, Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;->getType()I

    move-result v4

    if-ne v4, v6, :cond_48

    .line 1851
    check-cast v3, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;

    if-eqz p3, :cond_3b

    .line 1854
    iput v1, v3, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;->progress:I

    goto :goto_11

    .line 1857
    :cond_3b
    invoke-static {v3}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;->-$$Nest$fgetkey(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1858
    iput p2, v3, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Child;->progress:I

    goto :goto_11

    .line 1861
    :cond_48
    invoke-virtual {v3}, Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;->getType()I

    move-result v4

    if-ne v4, v5, :cond_11

    .line 1862
    check-cast v3, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Group;

    if-eqz p3, :cond_55

    .line 1865
    iput v1, v3, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Group;->progress:I

    goto :goto_11

    .line 1868
    :cond_55
    iget-object v4, v3, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Group;->selectKey:Ljava/lang/String;

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1869
    iput p2, v3, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$Group;->progress:I

    goto :goto_11

    :cond_60
    :goto_60
    return-void
.end method
