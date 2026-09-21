.class Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/ModePickerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeInformation"
.end annotation


# instance fields
.field private MAX_MODES_NUMBER_IN_TAB:I

.field private mCurrentIsTabLayoutMode:Z

.field private mCurrentModeIndexInTabLayout:I

.field private mCurrentModeItem:Lcom/transsion/camera/app/common/FeatureResource;

.field private mDefaultModeFeatureName:Ljava/lang/String;

.field private mDefaultSelectedMode:Ljava/lang/String;

.field private mIsSupportMoreMode:Z

.field private mModeItems:Ljava/util/List;

.field private mTabLayoutModeItems:Ljava/util/List;

.field final synthetic this$0:Lcom/transsion/camera/app/ui/ModePickerUI;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCurrentIsTabLayoutMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->mCurrentIsTabLayoutMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentModeItem(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Lcom/transsion/camera/app/common/FeatureResource;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->mCurrentModeItem:Lcom/transsion/camera/app/common/FeatureResource;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDefaultModeFeatureName(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->mDefaultModeFeatureName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsSupportMoreMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->mIsSupportMoreMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$mcurrentIsTabLayoutMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->currentIsTabLayoutMode()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mcurrentModeFeatureName(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->currentModeFeatureName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcurrentModeIndexInTabLayout(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)I
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->currentModeIndexInTabLayout()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mcurrentModeShowName(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->currentModeShowName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdefaultSelectedMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;Lcom/transsion/camera/app/common/FeatureResource;Z)Z
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->defaultSelectedMode(Lcom/transsion/camera/app/common/FeatureResource;Z)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetAllMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Ljava/util/List;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->getAllMode()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetDefaultModeTitle(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->getDefaultModeTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetTabLayoutMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;I)Lcom/transsion/camera/app/common/FeatureResource;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->getTabLayoutMode(I)Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetTabLayoutMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Ljava/util/List;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->getTabLayoutMode()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misTabLayoutMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;Ljava/lang/String;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->isTabLayoutMode(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateCurrentMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->updateCurrentMode()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateCurrentMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->updateCurrentMode(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateCurrentMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->updateCurrentMode(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateModeListAndDefaultMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->updateModeListAndDefaultMode(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateModeListAndDefaultMode(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->updateModeListAndDefaultMode(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mvalidModeList(Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->validModeList()Z

    move-result p0

    return p0
.end method

.method constructor <init>(Lcom/transsion/camera/app/ui/ModePickerUI;I)V
    .registers 3

    .line 2714
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2715
    iput p2, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->MAX_MODES_NUMBER_IN_TAB:I

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/app/ui/ModePickerUI;Lcom/transsion/camera/app/mode/ModeOrderProvider;)V
    .registers 4

    .line 2719
    invoke-virtual {p2}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getConfig()Lcom/transsion/camera/app/mode/ModePickerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModePickerConfig;->defaultModeCountInTab()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI;I)V

    .line 2720
    invoke-virtual {p2}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getConfig()Lcom/transsion/camera/app/mode/ModePickerConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleMore()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->mIsSupportMoreMode:Z

    return-void
.end method

.method private currentIsTabLayoutMode(I)V
    .registers 5

    .line 2813
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmModeOrderProvider(Lcom/transsion/camera/app/ui/ModePickerUI;)Lcom/transsion/camera/app/mode/ModeOrderProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getConfig()Lcom/transsion/camera/app/mode/ModePickerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleMore()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_26

    .line 2814
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmModeOrderProvider(Lcom/transsion/camera/app/ui/ModePickerUI;)Lcom/transsion/camera/app/mode/ModeOrderProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getTabModeList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_23

    move v1, v2

    :cond_23
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->mCurrentIsTabLayoutMode:Z

    return-void

    .line 2816
    :cond_26
    iget v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->MAX_MODES_NUMBER_IN_TAB:I

    if-ge p1, v0, :cond_2b

    move v1, v2

    :cond_2b
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->mCurrentIsTabLayoutMode:Z

    return-void
.end method

.method private currentIsTabLayoutMode()Z
    .registers 1

    .line 2821
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->mCurrentIsTabLayoutMode:Z

    return p0
.end method

.method private currentModeFeatureName()Ljava/lang/String;
    .registers 1

    .line 2852
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->mCurrentModeItem:Lcom/transsion/camera/app/common/FeatureResource;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 2855
    :cond_6
    iget-object p0, p0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    return-object p0
.end method

.method private currentModeIndexInTabLayout()I
    .registers 1

    .line 2825
    iget p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->mCurrentModeIndexInTabLayout:I

    return p0
.end method

.method private currentModeShowName()Ljava/lang/String;
    .registers 1

    .line 2844
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->mCurrentModeItem:Lcom/transsion/camera/app/common/FeatureResource;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 2847
    :cond_6
    iget-object p0, p0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    return-object p0
.end method

.method private defaultSelectedMode(Lcom/transsion/camera/app/common/FeatureResource;Z)Z
    .registers 3

    .line 2753
    iget-object p1, p1, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    if-eqz p2, :cond_7

    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->mDefaultModeFeatureName:Ljava/lang/String;

    goto :goto_9

    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->mDefaultSelectedMode:Ljava/lang/String;

    :goto_9
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private getAllMode()Ljava/util/List;
    .registers 1

    .line 2840
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->mModeItems:Ljava/util/List;

    return-object p0
.end method

.method private getDefaultModeTitle()Ljava/lang/String;
    .registers 5

    .line 2784
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->mModeItems:Ljava/util/List;

    if-eqz v0, :cond_21

    .line 2785
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/FeatureResource;

    .line 2786
    iget-object v2, v1, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->mDefaultModeFeatureName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2787
    iget-object p0, v1, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    return-object p0

    :cond_21
    const/4 p0, 0x0

    return-object p0
.end method

.method private getTabLayoutMode(I)Lcom/transsion/camera/app/common/FeatureResource;
    .registers 2

    .line 2757
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->mTabLayoutModeItems:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/FeatureResource;

    return-object p0
.end method

.method private getTabLayoutMode()Ljava/util/List;
    .registers 1

    .line 2749
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->mTabLayoutModeItems:Ljava/util/List;

    return-object p0
.end method

.method private isTabLayoutMode(Ljava/lang/String;)Z
    .registers 3

    .line 2829
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->mTabLayoutModeItems:Ljava/util/List;

    if-eqz p0, :cond_1e

    .line 2830
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/FeatureResource;

    .line 2831
    iget-object v0, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method private updateCurrentMode()V
    .registers 2

    .line 2765
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->currentIsDVMode()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2766
    const-string v0, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->updateCurrentMode(Ljava/lang/String;)V

    return-void

    .line 2768
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->mDefaultModeFeatureName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->updateCurrentMode(Ljava/lang/String;)V

    return-void
.end method

.method private updateCurrentMode(I)V
    .registers 5

    .line 2773
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->mTabLayoutModeItems:Ljava/util/List;

    if-eqz v0, :cond_21

    if-ltz p1, :cond_21

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_d

    goto :goto_21

    .line 2777
    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->mTabLayoutModeItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/FeatureResource;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->mCurrentModeItem:Lcom/transsion/camera/app/common/FeatureResource;

    const/4 v1, 0x1

    .line 2778
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->mCurrentIsTabLayoutMode:Z

    .line 2779
    iput p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->mCurrentModeIndexInTabLayout:I

    .line 2780
    iget-object p1, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->mDefaultSelectedMode:Ljava/lang/String;

    return-void

    .line 2774
    :cond_21
    :goto_21
    invoke-static {}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCurrentMode index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mTabLayoutModeItems:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->mTabLayoutModeItems:Ljava/util/List;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updateCurrentMode(Ljava/lang/String;)V
    .registers 5

    .line 2795
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->mModeItems:Ljava/util/List;

    if-eqz v0, :cond_57

    .line 2796
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_57

    .line 2798
    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->mModeItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/FeatureResource;

    iget-object v2, v2, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 2799
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->mModeItems:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/FeatureResource;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->mCurrentModeItem:Lcom/transsion/camera/app/common/FeatureResource;

    .line 2800
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->currentIsTabLayoutMode(I)V

    .line 2801
    invoke-static {}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCurrentMode: mCurrentIsTabLayoutMode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->mCurrentIsTabLayoutMode:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2802
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->mCurrentIsTabLayoutMode:Z

    if-eqz p1, :cond_48

    goto :goto_49

    :cond_48
    const/4 v1, -0x1

    :goto_49
    iput v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->mCurrentModeIndexInTabLayout:I

    if-eqz p1, :cond_57

    .line 2804
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->mCurrentModeItem:Lcom/transsion/camera/app/common/FeatureResource;

    iget-object p1, p1, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->mDefaultSelectedMode:Ljava/lang/String;

    return-void

    :cond_54
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_57
    return-void
.end method

.method private updateModeListAndDefaultMode(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 2724
    iput-object p3, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->mDefaultModeFeatureName:Ljava/lang/String;

    .line 2725
    iput-object p2, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->mDefaultSelectedMode:Ljava/lang/String;

    .line 2726
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->mModeItems:Ljava/util/List;

    .line 2727
    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->mIsSupportMoreMode:Z

    const/4 p3, 0x0

    if-eqz p2, :cond_37

    .line 2728
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmContext(Lcom/transsion/camera/app/ui/ModePickerUI;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->isVIPSelfieMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 2729
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->mModeItems:Ljava/util/List;

    iget p2, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->MAX_MODES_NUMBER_IN_TAB:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-interface {p1, p3, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->mTabLayoutModeItems:Ljava/util/List;

    goto :goto_47

    .line 2731
    :cond_2a
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmModeOrderProvider(Lcom/transsion/camera/app/ui/ModePickerUI;)Lcom/transsion/camera/app/mode/ModeOrderProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/mode/ModeOrderProvider;->getTabModeList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->mTabLayoutModeItems:Ljava/util/List;

    goto :goto_47

    .line 2734
    :cond_37
    iget p2, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->MAX_MODES_NUMBER_IN_TAB:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-interface {p1, p3, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->mTabLayoutModeItems:Ljava/util/List;

    .line 2736
    :goto_47
    invoke-static {}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mModeItems:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->mModeItems:Ljava/util/List;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updateModeListAndDefaultMode(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .line 2740
    iput p4, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->MAX_MODES_NUMBER_IN_TAB:I

    .line 2741
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->updateModeListAndDefaultMode(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private validModeList()Z
    .registers 1

    .line 2745
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->mModeItems:Ljava/util/List;

    if-eqz p0, :cond_c

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public currentIsDVMode()Z
    .registers 2

    .line 2761
    const-string v0, "com.transsion.camera.feature.mode.video.DVVideoModeEntry"

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI$ModeInformation;->currentModeFeatureName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
