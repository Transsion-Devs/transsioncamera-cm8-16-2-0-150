.class public Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI5;
.super Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mPreviewTranslationListener:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$mD_xSo-lEPaIhI2Z9-qfLDRBh1w(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI5;Ljava/lang/Integer;ZZ)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI5;->lambda$new$0(Ljava/lang/Integer;ZZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 25
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "PreviewTouchUI5"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 3

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;)V

    .line 27
    new-instance p1, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI5$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI5$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI5;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI5;->mPreviewTranslationListener:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/Integer;ZZ)V
    .registers 5

    .line 28
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->getPreviewTouchRoot()Landroid/view/View;

    move-result-object p0

    if-eqz p1, :cond_26

    if-eqz p0, :cond_26

    .line 30
    sget-object p2, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAnimationUpdate: translation: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_26
    return-void
.end method


# virtual methods
.method public getAnimatorUpdateListener(Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;)Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;",
            ")",
            "Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;"
        }
    .end annotation

    .line 42
    sget-object v0, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;->UI5_ANIM_PREVIEW_TRANSLATION:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;

    if-ne p1, v0, :cond_7

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI5;->mPreviewTranslationListener:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method
