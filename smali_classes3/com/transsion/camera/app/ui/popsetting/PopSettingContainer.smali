.class public Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer$GestureListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAvailableHeight:I

.field private mAvailableWidth:I

.field private mLeftViewMap:Ljava/util/Map;

.field private mOrientation:I

.field private final mPopSettingGestureDetector:Landroid/view/GestureDetector;

.field private mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

.field private mRightViewMap:Ljava/util/Map;

.field private mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

.field private final mUpdateHelper:Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;

.field private mViewMap:Ljava/util/Map;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAvailableHeight(Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->mAvailableHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAvailableWidth(Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->mAvailableWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLeftViewMap(Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->mLeftViewMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPopSettingUIManager(Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;)Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRightViewMap(Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->mRightViewMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUpdateHelper(Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;)Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->mUpdateHelper:Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmViewMap(Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->mViewMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmLeftViewMap(Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;Ljava/util/Map;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->mLeftViewMap:Ljava/util/Map;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRightViewMap(Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;Ljava/util/Map;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->mRightViewMap:Ljava/util/Map;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmViewMap(Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;Ljava/util/Map;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->mViewMap:Ljava/util/Map;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 23
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "PopSettingContainer"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 36
    iput p1, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->mOrientation:I

    .line 48
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer$GestureListener;

    invoke-direct {p3, p0}, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer$GestureListener;-><init>(Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;)V

    invoke-direct {p1, p2, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->mPopSettingGestureDetector:Landroid/view/GestureDetector;

    .line 49
    new-instance p1, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->mUpdateHelper:Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 94
    iget-object v0, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->mPopSettingGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_7

    .line 95
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 99
    :cond_7
    :try_start_7
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_b} :catch_c

    return p0

    :catch_c
    move-exception p0

    .line 101
    sget-object p1, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchTouchEvent exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public initManager(Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;)V
    .registers 3

    .line 53
    iput-object p1, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 54
    iput-object p2, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->mPopSettingUIManager:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    return-void
.end method

.method public initWidthAndHeight(II)V
    .registers 3

    .line 182
    iput p1, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->mAvailableWidth:I

    .line 183
    iput p2, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->mAvailableHeight:I

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 59
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 60
    iget-object p1, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->mViewMap:Ljava/util/Map;

    if-eqz p1, :cond_f

    .line 61
    new-instance p1, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer$1;-><init>(Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_f
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5

    .line 108
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 109
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 110
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/transsion/camera/R$dimen;->treasure_box_item_width:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    mul-int/2addr p1, p2

    .line 111
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->treasure_box_item_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/2addr p2, v0

    add-int/2addr p1, p2

    .line 112
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/transsion/camera/R$dimen;->pop_setting_horizontal_padding:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/transsion/camera/R$dimen;->top_bar_item_height:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 110
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void

    .line 114
    :cond_55
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 5

    .line 177
    sget-object v0, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onOrientationChanged] orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 178
    iput p1, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->mOrientation:I

    return-void
.end method

.method public setPaddingByToolbarScroll(IIII)V
    .registers 8

    .line 187
    sget-object v0, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPaddingByToolbarScroll left: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", top: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", right: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", bottom: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public updatePopSetting(Ljava/util/Map;)V
    .registers 5

    .line 120
    sget-object v0, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateTopBar] mAvailableWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->mAvailableWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mAvailableHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->mAvailableHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", viewMap.size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 122
    iput-object p1, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->mViewMap:Ljava/util/Map;

    .line 123
    iget v0, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->mAvailableWidth:I

    if-lez v0, :cond_4d

    .line 124
    iget-object v1, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->mUpdateHelper:Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;

    iget v2, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->mAvailableHeight:I

    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->setContainerWidthAndHeight(II)V

    .line 125
    iget-object v0, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->mUpdateHelper:Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;

    iget v1, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->mOrientation:I

    iget-object p0, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 126
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_49

    goto :goto_4a

    :cond_49
    const/4 v2, 0x0

    .line 125
    :goto_4a
    invoke-virtual {v0, p1, v1, v2}, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->update(Ljava/util/Map;IZ)V

    :cond_4d
    return-void
.end method
