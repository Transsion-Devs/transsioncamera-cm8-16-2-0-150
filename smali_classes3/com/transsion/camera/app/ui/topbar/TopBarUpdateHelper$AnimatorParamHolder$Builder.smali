.class public Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAction:Ljava/util/function/Consumer;

.field private mEndAlpha:F

.field private mEndScale:F

.field private mEndTranslate:F

.field private mIsTranslateX:Z

.field private final mKey:Ljava/lang/String;

.field private mStartAlpha:F

.field private mStartScale:F

.field private mStartTranslate:F

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;)V
    .registers 3

    .line 771
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 772
    invoke-static {p1}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->-$$Nest$fgetmKey(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;->mKey:Ljava/lang/String;

    .line 773
    invoke-static {p1}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->-$$Nest$fgetmView(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;->mView:Landroid/view/View;

    .line 774
    invoke-static {p1}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->-$$Nest$fgetmStartTranslate(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;->mStartTranslate:F

    .line 775
    invoke-static {p1}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->-$$Nest$fgetmEndTranslate(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;->mEndTranslate:F

    .line 776
    invoke-static {p1}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->-$$Nest$fgetmStartAlpha(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;->mStartAlpha:F

    .line 777
    invoke-static {p1}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->-$$Nest$fgetmEndAlpha(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;->mEndAlpha:F

    .line 778
    invoke-static {p1}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->-$$Nest$fgetmStartScale(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;->mStartScale:F

    .line 779
    invoke-static {p1}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->-$$Nest$fgetmEndScale(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;->mEndScale:F

    .line 780
    invoke-static {p1}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->-$$Nest$fgetmIsTranslateX(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;->mIsTranslateX:Z

    .line 781
    invoke-static {p1}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->-$$Nest$fgetmAction(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;)Ljava/util/function/Consumer;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;->mAction:Ljava/util/function/Consumer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/view/View;)V
    .registers 3

    .line 766
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 767
    iput-object p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;->mKey:Ljava/lang/String;

    .line 768
    iput-object p2, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;->mView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public build()Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;
    .registers 12

    .line 825
    new-instance v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;->mKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;->mView:Landroid/view/View;

    iget v3, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;->mStartTranslate:F

    iget v4, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;->mEndTranslate:F

    iget v5, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;->mStartAlpha:F

    iget v6, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;->mEndAlpha:F

    iget v7, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;->mStartScale:F

    iget v8, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;->mEndScale:F

    iget-boolean v9, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;->mIsTranslateX:Z

    iget-object v10, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;->mAction:Ljava/util/function/Consumer;

    invoke-direct/range {v0 .. v10}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;-><init>(Ljava/lang/String;Landroid/view/View;FFFFFFZLjava/util/function/Consumer;)V

    return-object v0
.end method

.method public setAction(Ljava/util/function/Consumer;)Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;
    .registers 2

    .line 820
    iput-object p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;->mAction:Ljava/util/function/Consumer;

    return-object p0
.end method

.method public setEndAlpha(F)Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;
    .registers 2

    .line 800
    iput p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;->mEndAlpha:F

    return-object p0
.end method

.method public setEndScale(F)Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;
    .registers 2

    .line 810
    iput p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;->mEndScale:F

    return-object p0
.end method

.method public setEndTranslate(F)Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;
    .registers 2

    .line 790
    iput p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;->mEndTranslate:F

    return-object p0
.end method

.method public setStartAlpha(F)Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;
    .registers 2

    .line 795
    iput p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;->mStartAlpha:F

    return-object p0
.end method

.method public setStartScale(F)Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;
    .registers 2

    .line 805
    iput p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;->mStartScale:F

    return-object p0
.end method

.method public setStartTranslate(F)Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;
    .registers 2

    .line 785
    iput p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;->mStartTranslate:F

    return-object p0
.end method

.method public setTranslateX(Z)Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;
    .registers 2

    .line 815
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;->mIsTranslateX:Z

    return-object p0
.end method
