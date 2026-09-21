.class Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimatorParamHolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder$Builder;
    }
.end annotation


# instance fields
.field private final mAction:Ljava/util/function/Consumer;

.field private final mEndAlpha:F

.field private final mEndScale:F

.field private final mEndTranslate:F

.field private final mIsTranslateX:Z

.field private final mKey:Ljava/lang/String;

.field private final mStartAlpha:F

.field private final mStartScale:F

.field private final mStartTranslate:F

.field private final mView:Ljava/lang/ref/WeakReference;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAction(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;)Ljava/util/function/Consumer;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->mAction:Ljava/util/function/Consumer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEndAlpha(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->mEndAlpha:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEndScale(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->mEndScale:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEndTranslate(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->mEndTranslate:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsTranslateX(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->mIsTranslateX:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmKey(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStartAlpha(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->mStartAlpha:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStartScale(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->mStartScale:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStartTranslate(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->mStartTranslate:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmView(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->mView:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/view/View;FFFFFFZLjava/util/function/Consumer;)V
    .registers 11

    .line 691
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 692
    iput-object p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->mKey:Ljava/lang/String;

    .line 693
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->mView:Ljava/lang/ref/WeakReference;

    .line 694
    iput p3, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->mStartTranslate:F

    .line 695
    iput p4, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->mEndTranslate:F

    .line 696
    iput p5, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->mStartAlpha:F

    .line 697
    iput p6, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->mEndAlpha:F

    .line 698
    iput p7, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->mStartScale:F

    .line 699
    iput p8, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->mEndScale:F

    .line 700
    iput-boolean p9, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->mIsTranslateX:Z

    .line 701
    iput-object p10, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->mAction:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public apply()V
    .registers 2

    .line 733
    iget-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->mAction:Ljava/util/function/Consumer;

    if-eqz v0, :cond_7

    .line 734
    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 706
    instance-of v0, p1, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_67

    check-cast p1, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;

    .line 709
    iget v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->mStartTranslate:F

    iget v2, p1, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->mStartTranslate:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_67

    iget v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->mEndTranslate:F

    iget v2, p1, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->mEndTranslate:F

    .line 710
    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_67

    iget v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->mStartAlpha:F

    iget v2, p1, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->mStartAlpha:F

    .line 711
    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_67

    iget v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->mEndAlpha:F

    iget v2, p1, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->mEndAlpha:F

    .line 712
    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_67

    iget v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->mStartScale:F

    iget v2, p1, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->mStartScale:F

    .line 713
    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_67

    iget v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->mEndScale:F

    iget v2, p1, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->mEndScale:F

    .line 714
    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_67

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->mIsTranslateX:Z

    iget-boolean v2, p1, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->mIsTranslateX:Z

    if-ne v0, v2, :cond_67

    iget-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->mKey:Ljava/lang/String;

    iget-object v2, p1, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->mKey:Ljava/lang/String;

    .line 716
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    iget-object p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->mView:Ljava/lang/ref/WeakReference;

    .line 717
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    iget-object p1, p1, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_67

    const/4 p0, 0x1

    return p0

    :cond_67
    return v1
.end method

.method public hashCode()I
    .registers 10

    .line 722
    iget-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->mKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->mStartTranslate:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->mEndTranslate:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget v4, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->mStartAlpha:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget v5, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->mEndAlpha:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget v6, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->mStartScale:F

    .line 723
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iget v7, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->mEndScale:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->mIsTranslateX:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    .line 722
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isValid()Z
    .registers 3

    .line 727
    iget v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->mStartTranslate:F

    iget v1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->mEndTranslate:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_21

    iget v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->mStartAlpha:F

    iget v1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->mEndAlpha:F

    .line 728
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_21

    iget v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->mStartScale:F

    iget p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->mEndScale:F

    .line 729
    invoke-static {v0, p0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x0

    return p0

    :cond_21
    :goto_21
    const/4 p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 741
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnimatorParamHolder{mKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->mView:Ljava/lang/ref/WeakReference;

    .line 743
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mStartTranslate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->mStartTranslate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mEndTranslate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->mEndTranslate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mStartAlpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->mStartAlpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mEndAlpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->mEndAlpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mStartScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->mStartScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mEndScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->mEndScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mIsTranslateX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->mIsTranslateX:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
