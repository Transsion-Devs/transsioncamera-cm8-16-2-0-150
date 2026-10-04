.class public Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;
.super Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecyclerViewAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;


# direct methods
.method public static synthetic $r8$lambda$5UZ-pdhmTyVs0ZVG-jOK3kpUazU(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Group;Landroid/view/View;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;->lambda$onBindViewHolder$0(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Group;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VjBzSdSQbEMXHQEWoxFkDN-20Ks(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;->lambda$onBindViewHolder$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cXrbF1BrsEM-FoepZJHnYDx-HY4(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;Landroid/view/View;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;->lambda$onBindViewHolder$1(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)V
    .registers 2

    .line 901
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter;-><init>()V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Group;Landroid/view/View;)V
    .registers 6

    .line 1003
    invoke-static {p2}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_8

    goto/16 :goto_8e

    .line 1006
    :cond_8
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$fgetmItemViewEnabled(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Z

    move-result p2

    if-nez p2, :cond_12

    goto/16 :goto_8e

    .line 1009
    :cond_12
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p2

    if-eqz p2, :cond_fa

    .line 1010
    invoke-static {}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string p2, "onBindViewHolder,TYPE_GROUP need show secondary menu"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1011
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/app/common/CommonConfigUtil;->mFaceBeautyV3:Z

    if-eqz p1, :cond_6f

    .line 1012
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$fgetmSkinColorMenu(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;

    move-result-object p1

    if-eqz p1, :cond_ea

    .line 1013
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    const-string/jumbo p2, "whiten"

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$fputmCurrentFeatureKey(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;Ljava/lang/String;)V

    .line 1014
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$fgetmDefaultMap(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$fgetmFaceBeautySetting(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Lcom/transsion/camera/app/common/setting/SettingBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getStoreScope()Ljava/lang/String;

    move-result-object v0

    const-string v1, "face_beauty_whiten_skin_card"

    invoke-virtual {p1, v1, p2, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1015
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$smparseValue(Ljava/lang/String;)I

    move-result p1

    .line 1016
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-static {p2, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$mupdateSkinColorCardValue(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;I)V

    .line 1017
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$fgetmSkinColorMenu(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/skincolor/SkinColorMenu;->showSkinColorMenu()V

    goto/16 :goto_ea

    .line 1020
    :cond_6f
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$fgetmCurrentSkinColorFeatureKey(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_b1

    invoke-static {}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$sfgetSKIN_COLOR_LIST()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_b1

    .line 1021
    invoke-static {}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$sfgetSKIN_COLOR_LIST()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    if-nez p1, :cond_8f

    :goto_8e
    return-void

    .line 1025
    :cond_8f
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    iget-object v0, p1, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->key:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$fputmCurrentSkinColorFeatureKey(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;Ljava/lang/String;)V

    .line 1026
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    iget-object v0, p1, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->key:Ljava/lang/String;

    iget p1, p1, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->featureId:I

    invoke-static {p2, v0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$mupdateSetting(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;Ljava/lang/String;I)V

    .line 1027
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$fgetmSkinColorGroup(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Lcom/transsion/camera/feature/mode/makeup/adapter/Item;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Group;

    if-eqz p1, :cond_b1

    .line 1029
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$fgetmCurrentSkinColorFeatureKey(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Group;->selectKey:Ljava/lang/String;

    .line 1032
    :cond_b1
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$fgetmCurrentSkinColorFeatureKey(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$fputmCurrentFeatureKey(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;Ljava/lang/String;)V

    .line 1033
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$mupdateSkinColorItemProgress(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)V

    .line 1034
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$fgetmSkinSecondMenu(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceSkinSecondMenu;

    move-result-object p1

    if-eqz p1, :cond_ea

    .line 1035
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$fgetmSkinSecondMenu(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceSkinSecondMenu;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$fgetmSkinColorGroup(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Lcom/transsion/camera/feature/mode/makeup/adapter/Item;

    move-result-object p2

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$VideoFaceSkinSecondMenuImpl;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$VideoFaceSkinSecondMenuImpl;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot-IA;)V

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$fgetmCurrentSkinColorFeatureKey(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$fgetmOrientation(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)I

    move-result v2

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceSkinSecondMenu;->showSkinSecondMenu(Lcom/transsion/camera/feature/mode/makeup/adapter/Item;Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceSkinSecondMenu$SecondMenuStateCallback;Ljava/lang/String;I)V

    .line 1039
    :cond_ea
    :goto_ea
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$fgetmRecyclerView(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1040
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$mupdateSeekBarUI(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)V

    return-void

    .line 1042
    :cond_fa
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter;->toggle(Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;Landroid/view/View;)V
    .registers 6

    .line 1054
    invoke-static {p2}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_7

    return-void

    .line 1057
    :cond_7
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$fputmNeedShowAIHint(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;Z)V

    .line 1058
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;->-$$Nest$fgetfeatureId(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;)I

    move-result p2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1a

    .line 1059
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    const/4 v1, 0x1

    invoke-static {p2, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$fputmNeedShowAIHint(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;Z)V

    .line 1061
    :cond_1a
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;->-$$Nest$fgetkey(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$fputmCurrentFeatureKey(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;Ljava/lang/String;)V

    .line 1062
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;->-$$Nest$fgetkey(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;->-$$Nest$fgetfeatureId(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;)I

    move-result v2

    invoke-static {p2, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$mupdateSetting(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;Ljava/lang/String;I)V

    .line 1063
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$mupdateSeekBarUI(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)V

    .line 1064
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$fgetmCurrentFeatureKey(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;->-$$Nest$fgetfeatureId(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;)I

    move-result p1

    invoke-static {p0, p2, p1, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$mupdateItemProgress(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;Ljava/lang/String;IZ)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$2(Landroid/view/View;)V
    .registers 2

    .line 1074
    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    .line 1077
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$mshowDialog(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 901
    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemVH;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;->onBindViewHolder(Lcom/transsion/camera/feature/mode/makeup/adapter/ItemVH;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/transsion/camera/feature/mode/makeup/adapter/ItemVH;I)V
    .registers 7

    .line 983
    invoke-static {}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindViewHolder,position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mCurrentFeatureKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$fgetmCurrentFeatureKey(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 984
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemAdapter;->getItem(I)Lcom/transsion/camera/feature/mode/makeup/adapter/Item;

    move-result-object v0

    .line 985
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter$1;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;)V

    .line 992
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemVH;->getType()I

    move-result v2

    const v3, 0xfa05

    if-eq v2, v3, :cond_40

    .line 993
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v3, 0x3f4ccccd    # 0.8f

    invoke-static {v2, v3, v1}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 995
    :cond_40
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemAdapter;->getItemViewType(I)I

    move-result p2

    packed-switch p2, :pswitch_data_e8

    return-void

    .line 1081
    :pswitch_48
    check-cast v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Footer;

    .line 1082
    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$FooterVH;

    .line 1083
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p2

    if-eqz p2, :cond_63

    .line 1084
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$FooterVH;->-$$Nest$fgetmIconView(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$FooterVH;)Lcom/transsion/camera/app/ui/widget/RotateImageView;

    move-result-object p1

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter;->mLowLight:Z

    if-eqz p0, :cond_5d

    iget p0, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Footer;->blackDrawableId:I

    goto :goto_5f

    :cond_5d
    iget p0, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Footer;->drawableId:I

    :goto_5f
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 1086
    :cond_63
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$FooterVH;->-$$Nest$fgetmIconView(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$FooterVH;)Lcom/transsion/camera/app/ui/widget/RotateImageView;

    move-result-object p2

    iget v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Footer;->drawableId:I

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1087
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter;->mLowLight:Z

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$FooterVH;->bindHolder(Ljava/lang/Object;Z)V

    return-void

    .line 1068
    :pswitch_72
    check-cast v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Reset;

    .line 1069
    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ResetVH;

    .line 1070
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ResetVH;->-$$Nest$fgetmIconView(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ResetVH;)Landroid/widget/ImageView;

    move-result-object p2

    iget v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Reset;->drawableId:I

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1071
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ResetVH;->-$$Nest$fgetmTitleView(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ResetVH;)Landroid/widget/TextView;

    move-result-object p2

    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Reset;->title:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1072
    iget-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter;->mLowLight:Z

    invoke-virtual {p1, v0, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ResetVH;->bindHolder(Ljava/lang/Object;Z)V

    .line 1073
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 1048
    :pswitch_98
    check-cast v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;

    .line 1049
    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;

    .line 1050
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->-$$Nest$fgetmIconView(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;->-$$Nest$fgetdrawableId(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1051
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->-$$Nest$fgetmTitleView(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;->-$$Nest$fgettitle(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1052
    iget-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter;->mLowLight:Z

    invoke-virtual {p1, v0, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;->bindHolder(Ljava/lang/Object;Z)V

    .line 1053
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 997
    :pswitch_c2
    check-cast v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Group;

    .line 998
    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$GroupVH;

    .line 999
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$GroupVH;->-$$Nest$fgetmIconView(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$GroupVH;)Landroid/widget/ImageView;

    move-result-object p2

    iget v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Group;->drawableId:I

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1000
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$GroupVH;->-$$Nest$fgetmTitleView(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$GroupVH;)Landroid/widget/TextView;

    move-result-object p2

    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Group;->title:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1001
    iget-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter;->mLowLight:Z

    invoke-virtual {p1, v0, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$GroupVH;->bindHolder(Ljava/lang/Object;Z)V

    .line 1002
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Group;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :pswitch_data_e8
    .packed-switch 0xfa01
        :pswitch_c2
        :pswitch_98
        :pswitch_98
        :pswitch_72
        :pswitch_48
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 901
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/mode/makeup/adapter/ItemVH;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/mode/makeup/adapter/ItemVH;
    .registers 6

    .line 904
    invoke-static {}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateViewHolder,viewType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 908
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-nez v0, :cond_2a

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_2a

    .line 911
    :cond_27
    sget v0, Lcom/transsion/camera/feature/makeup/R$layout;->feature_item:I

    goto :goto_2c

    .line 909
    :cond_2a
    :goto_2a
    sget v0, Lcom/transsion/camera/feature/makeup/R$layout;->feature_item_ui4:I

    :goto_2c
    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_ae

    const/4 p0, 0x0

    return-object p0

    .line 932
    :pswitch_32
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-nez p2, :cond_44

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p2

    if-eqz p2, :cond_41

    goto :goto_44

    .line 935
    :cond_41
    sget p2, Lcom/transsion/camera/feature/makeup/R$layout;->footer_layout:I

    goto :goto_46

    .line 933
    :cond_44
    :goto_44
    sget p2, Lcom/transsion/camera/feature/makeup/R$layout;->footer_layout_ui4:I

    .line 937
    :goto_46
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 938
    new-instance p2, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$FooterVH;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$FooterVH;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;Landroid/view/View;)V

    return-object p2

    .line 927
    :pswitch_5a
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/transsion/camera/feature/makeup/R$layout;->restore_layout:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 928
    new-instance p2, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ResetVH;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ResetVH;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;Landroid/view/View;)V

    return-object p2

    .line 923
    :pswitch_70
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/transsion/camera/feature/makeup/R$layout;->makeup_feature_skin_item:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 924
    new-instance p2, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;Landroid/view/View;)V

    return-object p2

    .line 919
    :pswitch_86
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 920
    new-instance p2, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;Landroid/view/View;)V

    return-object p2

    .line 915
    :pswitch_9a
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 916
    new-instance p2, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$GroupVH;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$GroupVH;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;Landroid/view/View;)V

    return-object p2

    :pswitch_data_ae
    .packed-switch 0xfa01
        :pswitch_9a
        :pswitch_86
        :pswitch_70
        :pswitch_5a
        :pswitch_32
    .end packed-switch
.end method

.method public updateSelectItemProgress(Ljava/lang/String;IZ)V
    .registers 11

    .line 945
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_60

    .line 948
    :cond_7
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemAdapter;->getAllItem()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :cond_11
    :goto_11
    if-ge v2, v0, :cond_60

    .line 950
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;

    .line 951
    invoke-virtual {v3}, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->getType()I

    move-result v4

    const v5, 0xfa01

    const v6, 0xfa02

    if-eq v4, v6, :cond_2e

    invoke-virtual {v3}, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->getType()I

    move-result v4

    if-eq v4, v5, :cond_2e

    goto :goto_11

    .line 954
    :cond_2e
    invoke-virtual {v3}, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->getType()I

    move-result v4

    if-ne v4, v6, :cond_48

    .line 955
    check-cast v3, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;

    if-eqz p3, :cond_3b

    .line 958
    iput v1, v3, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;->progress:I

    goto :goto_11

    .line 961
    :cond_3b
    invoke-static {v3}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;->-$$Nest$fgetkey(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 962
    iput p2, v3, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;->progress:I

    goto :goto_11

    .line 965
    :cond_48
    invoke-virtual {v3}, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->getType()I

    move-result v4

    if-ne v4, v5, :cond_11

    .line 966
    check-cast v3, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Group;

    if-eqz p3, :cond_55

    .line 969
    iput v1, v3, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Group;->progress:I

    goto :goto_11

    .line 972
    :cond_55
    iget-object v4, v3, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Group;->selectKey:Ljava/lang/String;

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 973
    iput p2, v3, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Group;->progress:I

    goto :goto_11

    :cond_60
    :goto_60
    return-void
.end method
