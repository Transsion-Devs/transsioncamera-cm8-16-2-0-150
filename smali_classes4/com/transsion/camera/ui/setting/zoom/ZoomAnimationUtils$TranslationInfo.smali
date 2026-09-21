.class public Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$TranslationInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TranslationInfo"
.end annotation


# instance fields
.field private final mRoot:Landroid/view/View;

.field private final mTranslationEnd:F

.field private final mTranslationStart:F


# direct methods
.method public constructor <init>(Landroid/view/View;FF)V
    .registers 4

    .line 686
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 687
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$TranslationInfo;->mRoot:Landroid/view/View;

    .line 688
    iput p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$TranslationInfo;->mTranslationStart:F

    .line 689
    iput p3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$TranslationInfo;->mTranslationEnd:F

    return-void
.end method


# virtual methods
.method public getRoot()Landroid/view/View;
    .registers 1

    .line 694
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$TranslationInfo;->mRoot:Landroid/view/View;

    return-object p0
.end method

.method public getTranslationEnd()F
    .registers 1

    .line 702
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$TranslationInfo;->mTranslationEnd:F

    return p0
.end method

.method public getTranslationStart()F
    .registers 1

    .line 698
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$TranslationInfo;->mTranslationStart:F

    return p0
.end method
