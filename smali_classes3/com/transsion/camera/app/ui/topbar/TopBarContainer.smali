.class public Lcom/transsion/camera/app/ui/topbar/TopBarContainer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;
.implements Lcom/transsion/camera/app/common/IScreenFormControl;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mAvailableHeight:I

.field private mAvailableWidth:I

.field private mContext:Landroid/content/Context;

.field private mLeftViewMap:Ljava/util/Map;

.field private mOrientation:I

.field private mRightViewMap:Ljava/util/Map;

.field private mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

.field private mUpdateHelper:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;

.field private mViewMap:Ljava/util/Map;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAnimatorListener(Lcom/transsion/camera/app/ui/topbar/TopBarContainer;)Landroid/animation/Animator$AnimatorListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAvailableHeight(Lcom/transsion/camera/app/ui/topbar/TopBarContainer;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mAvailableHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAvailableWidth(Lcom/transsion/camera/app/ui/topbar/TopBarContainer;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mAvailableWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/transsion/camera/app/ui/topbar/TopBarContainer;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLeftViewMap(Lcom/transsion/camera/app/ui/topbar/TopBarContainer;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mLeftViewMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOrientation(Lcom/transsion/camera/app/ui/topbar/TopBarContainer;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mOrientation:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRightViewMap(Lcom/transsion/camera/app/ui/topbar/TopBarContainer;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mRightViewMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScreenManager(Lcom/transsion/camera/app/ui/topbar/TopBarContainer;)Lcom/transsion/camera/app/ui/ScreenManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUpdateHelper(Lcom/transsion/camera/app/ui/topbar/TopBarContainer;)Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mUpdateHelper:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmViewMap(Lcom/transsion/camera/app/ui/topbar/TopBarContainer;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mViewMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmLeftViewMap(Lcom/transsion/camera/app/ui/topbar/TopBarContainer;Ljava/util/Map;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mLeftViewMap:Ljava/util/Map;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRightViewMap(Lcom/transsion/camera/app/ui/topbar/TopBarContainer;Ljava/util/Map;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mRightViewMap:Ljava/util/Map;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmViewMap(Lcom/transsion/camera/app/ui/topbar/TopBarContainer;Ljava/util/Map;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mViewMap:Ljava/util/Map;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 29
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "TopBarContainer"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 43
    iput p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mOrientation:I

    .line 58
    new-instance p1, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mUpdateHelper:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;

    return-void
.end method


# virtual methods
.method public addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .registers 2

    .line 66
    iput-object p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method public initManager(Lcom/transsion/camera/app/ui/ScreenManager;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    return-void
.end method

.method public initWidthAndHeight(II)V
    .registers 3

    .line 147
    iput p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mAvailableWidth:I

    .line 148
    iput p2, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mAvailableHeight:I

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 71
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 72
    iget-object p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mViewMap:Ljava/util/Map;

    if-eqz p1, :cond_f

    .line 73
    new-instance p1, Lcom/transsion/camera/app/ui/topbar/TopBarContainer$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer$1;-><init>(Lcom/transsion/camera/app/ui/topbar/TopBarContainer;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_f
    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 5

    .line 142
    sget-object v0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onOrientationChanged] orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 143
    iput p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mOrientation:I

    return-void
.end method

.method public setDisplayLeftToRight(Z)V
    .registers 2

    .line 132
    iget-object p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mUpdateHelper:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->setDisplayLeftToRight(Z)V

    return-void
.end method

.method public setPaddingByToolbarScroll(IIII)V
    .registers 8

    .line 152
    sget-object v0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 153
    iget-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3c

    const/4 p1, 0x0

    .line 154
    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void

    .line 156
    :cond_3c
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public setUseMiddleDirection(Z)V
    .registers 2

    .line 108
    iget-object p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mUpdateHelper:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;

    if-eqz p0, :cond_7

    .line 109
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->setUseMiddleDirection(Z)V

    :cond_7
    return-void
.end method

.method public updateTopBar(Ljava/util/Map;I)V
    .registers 14

    .line 114
    sget-object v0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateTopBar] mAvailableWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mAvailableWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mAvailableHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mAvailableHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", viewMap.size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p2, v0, :cond_34

    .line 117
    iput-object p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mLeftViewMap:Ljava/util/Map;

    goto :goto_3e

    :cond_34
    const/4 v1, 0x2

    if-ne p2, v1, :cond_3a

    .line 119
    iput-object p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mRightViewMap:Ljava/util/Map;

    goto :goto_3e

    :cond_3a
    if-nez p2, :cond_3e

    .line 121
    iput-object p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mViewMap:Ljava/util/Map;

    .line 123
    :cond_3e
    :goto_3e
    iget v1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mAvailableWidth:I

    if-lez v1, :cond_66

    .line 124
    iget-object v2, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mUpdateHelper:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;

    iget v3, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mAvailableHeight:I

    invoke-virtual {v2, v1, v3}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->setContainerWidthAndHeight(II)V

    .line 125
    iget-object v4, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mUpdateHelper:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;

    iget v6, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mOrientation:I

    iget-object v1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 126
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v1

    if-eq v1, v0, :cond_57

    :goto_55
    move v7, v0

    goto :goto_59

    :cond_57
    const/4 v0, 0x0

    goto :goto_55

    :goto_59
    iget-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 127
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v9

    iget-object v10, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    move-object v5, p1

    move v8, p2

    .line 125
    invoke-virtual/range {v4 .. v10}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->update(Ljava/util/Map;IZIILandroid/animation/Animator$AnimatorListener;)V

    :cond_66
    return-void
.end method
