.class public Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LetterSelectorConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig$LetterSelectorListener;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private dimenDP:Z

.field private final letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;


# direct methods
.method private constructor <init>(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)V
    .registers 3

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->dimenDP:Z

    .line 99
    iput-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->context:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$1;)V
    .registers 3

    .line 71
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;-><init>(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)V

    return-void
.end method

.method static synthetic access$4202(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;Z)Z
    .registers 2

    .line 71
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->dimenDP:Z

    return p1
.end method

.method static synthetic access$4400(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    return-object p0
.end method

.method private dimenSize(I)I
    .registers 3

    .line 81
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->dimenDP:Z

    if-eqz v0, :cond_b

    .line 82
    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->context:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->dpToPx(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_b
    return p1
.end method

.method private dimenSpSize(I)I
    .registers 3

    .line 88
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->dimenDP:Z

    if-eqz v0, :cond_b

    .line 89
    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->context:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->spToPx(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_b
    return p1
.end method

.method public static dpToPx(Landroid/content/Context;I)I
    .registers 3

    int-to-float p1, p1

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private initAllLetters()V
    .registers 4

    .line 336
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    # getter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mAllLetters:Ljava/util/List;
    invoke-static {v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$3600(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 337
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    # getter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mLetters:Ljava/util/List;
    invoke-static {v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$3400(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 338
    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    # getter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mChangelessLetters:Ljava/util/List;
    invoke-static {v2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$3700(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    goto :goto_13

    .line 341
    :cond_2c
    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    # getter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mAllLetters:Ljava/util/List;
    invoke-static {v2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$3600(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 345
    :cond_36
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    # getter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mAllLetters:Ljava/util/List;
    invoke-static {v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$3600(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    # getter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mChangelessLetters:Ljava/util/List;
    invoke-static {p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$3700(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private initLettersSort()V
    .registers 6

    .line 296
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    # getter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mLetters:Ljava/util/List;
    invoke-static {v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$3400(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_38

    .line 297
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v4, v3, :cond_21

    goto :goto_38

    .line 302
    :cond_21
    # getter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->SPECIAL_LETTERS:Ljava/util/List;
    invoke-static {}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$3500()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    goto :goto_a

    .line 306
    :cond_2c
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x41

    if-lt v1, v3, :cond_38

    const/16 v3, 0x5a

    if-le v1, v3, :cond_a

    :cond_38
    :goto_38
    move v3, v2

    .line 313
    :cond_39
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    # getter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mAllLetters:Ljava/util/List;
    invoke-static {v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$3600(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz v3, :cond_80

    .line 315
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    # getter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mAllLetters:Ljava/util/List;
    invoke-static {v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$3600(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    # getter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mChangelessLetters:Ljava/util/List;
    invoke-static {v1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$3700(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 316
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    # getter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mLetters:Ljava/util/List;
    invoke-static {v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$3400(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 317
    iget-object v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    # getter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mChangelessLetters:Ljava/util/List;
    invoke-static {v3}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$3700(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_76

    goto :goto_5d

    .line 320
    :cond_76
    iget-object v3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    # getter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mAllLetters:Ljava/util/List;
    invoke-static {v3}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$3600(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5d

    .line 323
    :cond_80
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    # getter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mAllLetters:Ljava/util/List;
    invoke-static {v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$3600(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    # getter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mLetters:Ljava/util/List;
    invoke-static {v1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$3400(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 326
    :cond_8f
    new-instance v0, Lcom/transsion/sort/SortUtil;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/sort/SortUtil;-><init>(Landroid/content/Context;)V

    .line 328
    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    # getter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mAllLetters:Ljava/util/List;
    invoke-static {v1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$3600(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/sort/SortUtil;->sortString(Ljava/util/List;)V

    .line 329
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    # getter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mAllLetters:Ljava/util/List;
    invoke-static {v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$3600(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Ljava/util/List;

    move-result-object v0

    const-string v1, "\u2606"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 330
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    # getter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mAllLetters:Ljava/util/List;
    invoke-static {v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$3600(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 331
    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    # getter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mAllLetters:Ljava/util/List;
    invoke-static {p0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$3600(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_bf
    return-void
.end method

.method public static spToPx(Landroid/content/Context;I)I
    .registers 3

    int-to-float p1, p1

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method


# virtual methods
.method public initConfig(Landroid/content/Context;)V
    .registers 7

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->letter_top_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->letter_bottom_padding:I

    .line 106
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_letter_padding:I

    .line 107
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 105
    invoke-virtual {p0, v1, v2, v3}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->setSelectorPadding(III)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;

    .line 109
    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    sget v2, Lcom/transsion/widgetslib/R$attr;->os_text_tertiary:I

    sget v3, Lcom/transsion/widgetslib/R$color;->os_text_tertiary_hios:I

    invoke-static {p1, v2, v3}, Lcom/transsion/widgetslib/util/Utils;->getAttrColor(Landroid/content/Context;II)I

    move-result v2

    # setter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mEnableColor:I
    invoke-static {v1, v2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$002(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;I)I

    .line 110
    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    sget v2, Lcom/transsion/widgetslib/R$color;->os_text_quaternary_color:I

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    # setter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mDisableColor:I
    invoke-static {v1, v2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$102(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;I)I

    .line 111
    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    # getter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mEnableColor:I
    invoke-static {v1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$000(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)I

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    # getter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mDisableColor:I
    invoke-static {v2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$100(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)I

    move-result v2

    sget v3, Lcom/transsion/widgetslib/R$attr;->os_text_secondary:I

    sget v4, Lcom/transsion/widgetslib/R$color;->os_text_secondary_hios:I

    invoke-static {p1, v3, v4}, Lcom/transsion/widgetslib/util/Utils;->getAttrColor(Landroid/content/Context;II)I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->setSelectorFontColor(III)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;

    .line 112
    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    sget v2, Lcom/transsion/widgetslib/R$attr;->os_text_secondary:I

    sget v3, Lcom/transsion/widgetslib/R$color;->os_text_secondary_hios:I

    invoke-static {p1, v2, v3}, Lcom/transsion/widgetslib/util/Utils;->getAttrColor(Landroid/content/Context;II)I

    move-result v2

    # setter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorColor:I
    invoke-static {v1, v2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$202(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;I)I

    .line 114
    invoke-static {p1}, Lcom/transsion/widgetslib/util/Utils;->getOsPlatformBasicColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->setSelectorSelectedLetterColor(I)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;

    .line 115
    sget v1, Lcom/transsion/widgetslib/R$drawable;->ic_touch_bg:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 116
    invoke-static {v1}, Lcom/transsion/widgetslib/util/ImageUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 117
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isRtl()Z

    move-result v2

    if-eqz v2, :cond_74

    .line 118
    invoke-static {v1}, Lcom/transsion/widgetslib/util/ImageUtils;->convert(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 120
    :cond_74
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->setSelectorLetterIndicatorBitmap(Landroid/graphics/Bitmap;II)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;

    .line 121
    sget v1, Lcom/transsion/widgetslib/R$dimen;->blade_touch_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->setTouchFrameStart(I)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;

    .line 122
    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_letter_bubble_margin_end:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    # setter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorStart:I
    invoke-static {v1, v2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$302(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;I)I

    .line 123
    sget v1, Lcom/transsion/widgetslib/R$color;->os_grayfill_az_weaker_hios:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->setSelectorIndicatorColor(I)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;

    .line 124
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    sget v2, Lcom/transsion/widgetslib/R$drawable;->os_letter_star_bubble:I

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v2, v3}, Lcom/transsion/widgetslib/util/ImageUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v2

    # setter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mBitmapHeartBubble:Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$402(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 126
    iget-object v1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    sget v2, Lcom/transsion/widgetslib/R$drawable;->os_letter_star:I

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v2, v0}, Lcom/transsion/widgetslib/util/ImageUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v0

    # setter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mBitmapHeartLetter:Landroid/graphics/Bitmap;
    invoke-static {v1, v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$502(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 127
    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_letter_panel_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    # setter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mPanelHeight:F
    invoke-static {p0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$602(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;F)F

    return-void
.end method

.method public isSelectorTouching()Z
    .registers 1

    .line 363
    iget-object p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->touching:Z

    return p0
.end method

.method public registerLetterSelectorListener(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig$LetterSelectorListener;)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;
    .registers 3

    .line 131
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    # setter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterSelectorListener:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig$LetterSelectorListener;
    invoke-static {v0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$702(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig$LetterSelectorListener;)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig$LetterSelectorListener;

    return-object p0
.end method

.method public requestSelectorInvalidate()Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;
    .registers 2

    .line 224
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-object p0
.end method

.method public requestSelectorLayout()Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;
    .registers 2

    .line 229
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    # invokes: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterSelectorMeasure()V
    invoke-static {v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$2600(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)V

    .line 230
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-object p0
.end method

.method public setAlphabetAnimationDuration(I)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;
    .registers 5

    .line 274
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    int-to-long v1, p1

    # setter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->duration:J
    invoke-static {v0, v1, v2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$3302(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;J)J

    return-object p0
.end method

.method public setBubbleHideDelayTime(I)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;
    .registers 3

    const/16 v0, 0x32

    if-ge p1, v0, :cond_5

    move p1, v0

    :cond_5
    const/16 v0, 0x3e8

    if-le p1, v0, :cond_a

    move p1, v0

    .line 384
    :cond_a
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    # setter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mBubbleHideDelayTime:I
    invoke-static {v0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$4002(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;I)I

    return-object p0
.end method

.method public setExcludePaddingBottomCenter(Z)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;
    .registers 3

    .line 158
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    # setter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mExcludePaddingBottomCenter:Z
    invoke-static {v0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$1202(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Z)Z

    return-object p0
.end method

.method public setSelectorAnimationInterpolator(Landroid/view/animation/Interpolator;)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;
    .registers 3

    if-nez p1, :cond_7

    .line 217
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 219
    :cond_7
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    iput-object p1, v0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->animationInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public setSelectorFontColor(II)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;
    .registers 5

    .line 195
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->context:Landroid/content/Context;

    sget v1, Lcom/transsion/widgetslib/R$color;->letter_select_color:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->setSelectorFontColor(III)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;

    return-object p0
.end method

.method public setSelectorFontColor(III)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;
    .registers 5

    .line 185
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    # setter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mEnableColor:I
    invoke-static {v0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$002(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;I)I

    .line 186
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    # setter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mDisableColor:I
    invoke-static {v0, p2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$102(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;I)I

    .line 187
    iget-object p2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    # getter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->txtPaint:Landroid/graphics/Paint;
    invoke-static {p2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$1700(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 188
    iget-object p2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    # getter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->txtMaxPaint:Landroid/graphics/Paint;
    invoke-static {p2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$1900(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 189
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    # setter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorColor:I
    invoke-static {p1, p3}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$202(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;I)I

    .line 190
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    # getter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->indicatorLetterPaint:Landroid/graphics/Paint;
    invoke-static {p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$2000(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    return-object p0
.end method

.method public setSelectorFontSize(III)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;
    .registers 5

    .line 173
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->dimenSpSize(I)I

    move-result p1

    int-to-float p1, p1

    # setter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterSize:F
    invoke-static {v0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$1402(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;F)F

    .line 174
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->dimenSpSize(I)I

    move-result p2

    int-to-float p2, p2

    # setter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterMaxSize:F
    invoke-static {p1, p2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$1502(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;F)F

    .line 175
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-direct {p0, p3}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->dimenSpSize(I)I

    move-result p2

    int-to-float p2, p2

    # setter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorSize:F
    invoke-static {p1, p2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$1602(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;F)F

    .line 176
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    # getter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->txtPaint:Landroid/graphics/Paint;
    invoke-static {p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$1700(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Landroid/graphics/Paint;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    # getter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterSize:F
    invoke-static {p2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$1400(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 177
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    # getter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->selectedLetterPaint:Landroid/graphics/Paint;
    invoke-static {p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$1800(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Landroid/graphics/Paint;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    # getter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterSize:F
    invoke-static {p2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$1400(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 178
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    # getter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->txtMaxPaint:Landroid/graphics/Paint;
    invoke-static {p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$1900(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Landroid/graphics/Paint;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    # getter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterMaxSize:F
    invoke-static {p2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$1500(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 179
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    # getter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->indicatorLetterPaint:Landroid/graphics/Paint;
    invoke-static {p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$2000(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Landroid/graphics/Paint;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    # getter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorSize:F
    invoke-static {p2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$1600(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 180
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    # invokes: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->updateFontHeight()V
    invoke-static {p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$2100(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)V

    return-object p0
.end method

.method public setSelectorIndicatorColor(I)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;
    .registers 3

    .line 200
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    # setter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->indicatorColor:I
    invoke-static {v0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$2202(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;I)I

    .line 201
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    # getter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->indicatorPaint:Landroid/graphics/Paint;
    invoke-static {v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$2300(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-object p0
.end method

.method public setSelectorIndicatorSize(II)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;
    .registers 3

    .line 206
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->dimenSize(I)I

    move-result p2

    # setter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorRadius:I
    invoke-static {p1, p2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$2402(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;I)I

    return-object p0
.end method

.method public setSelectorLetterIndicatorBitmap(Landroid/graphics/Bitmap;II)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;
    .registers 4

    .line 267
    iget-object p3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    # setter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorBitmap:Landroid/graphics/Bitmap;
    invoke-static {p3, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$3002(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 268
    iget-object p3, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->dimenSize(I)I

    move-result p2

    # setter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorBitmapWidth:I
    invoke-static {p3, p2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$3102(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;I)I

    .line 269
    iget-object p2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    # setter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorBitmapEnable:Z
    invoke-static {p2, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$3202(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Z)Z

    return-object p0
.end method

.method public setSelectorLetterIndicatorMinDurationTime(J)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;
    .registers 4

    .line 211
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    # setter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorMinDurationTime:J
    invoke-static {v0, p1, p2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$2502(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;J)J

    return-object p0
.end method

.method public setSelectorLetterIndicatorStart(I)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;
    .registers 3

    .line 168
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->dimenSize(I)I

    move-result p1

    # setter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterIndicatorStart:I
    invoke-static {v0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$302(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;I)I

    return-object p0
.end method

.method public setSelectorLetters([Ljava/lang/String;)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 283
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->setSelectorLettersAll([Ljava/lang/String;)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;

    move-result-object p0

    return-object p0
.end method

.method public setSelectorLettersAll([Ljava/lang/String;)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;
    .registers 3

    .line 350
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    # setter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mLetters:Ljava/util/List;
    invoke-static {v0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$3402(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Ljava/util/List;)Ljava/util/List;

    .line 351
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    # getter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mAllLetters:Ljava/util/List;
    invoke-static {p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$3600(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 352
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    # getter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mAllLetters:Ljava/util/List;
    invoke-static {p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$3600(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    # getter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mLetters:Ljava/util/List;
    invoke-static {v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$3400(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public setSelectorLettersSort([Ljava/lang/String;)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 291
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->setSelectorLettersAll([Ljava/lang/String;)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;

    move-result-object p0

    return-object p0
.end method

.method public setSelectorPadding(III)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;
    .registers 5

    .line 136
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->dimenSize(I)I

    move-result p1

    # setter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectorPaddingTop:I
    invoke-static {v0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$802(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;I)I

    .line 137
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->dimenSize(I)I

    move-result p2

    # setter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectorPaddingBottom:I
    invoke-static {p1, p2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$902(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;I)I

    .line 138
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-direct {p0, p3}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->dimenSize(I)I

    move-result p2

    # setter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectorPaddingStart:I
    invoke-static {p1, p2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$1002(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;I)I

    return-object p0
.end method

.method public setSelectorSelectedLetter(I)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;
    .registers 3

    .line 251
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->setSelectedLetter(I)V

    return-object p0
.end method

.method public setSelectorSelectedLetter(Ljava/lang/String;)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;
    .registers 3

    .line 246
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->setSelectedLetter(Ljava/lang/String;)V

    return-object p0
.end method

.method public setSelectorSelectedLetterColor(I)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;
    .registers 3

    .line 240
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    # setter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->selectedLetterColor:I
    invoke-static {v0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$2702(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;I)I

    .line 241
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    # getter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->selectedLetterPaint:Landroid/graphics/Paint;
    invoke-static {v0}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$1800(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-object p0
.end method

.method public setSelectorSelectedLetters(Ljava/util/ArrayList;)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    # setter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->selectedLetters:Ljava/util/ArrayList;
    invoke-static {v0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$2802(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 257
    iget-object p1, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-object p0
.end method

.method public setSelectorTopAndBottomClickableEnable(Z)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;
    .registers 3

    .line 262
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    # setter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->topAndBottomClickableEnable:Z
    invoke-static {v0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$2902(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Z)Z

    return-object p0
.end method

.method public setTouchFrameStart(I)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;
    .registers 3

    .line 163
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->dimenSize(I)I

    move-result p1

    int-to-float p1, p1

    # setter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->letterTouchAbleWidth:F
    invoke-static {v0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$1302(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;F)F

    return-object p0
.end method

.method public setTouchIndicator(II)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;
    .registers 3

    .line 235
    iget-object p2, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    # getter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->indicatorPaint:Landroid/graphics/Paint;
    invoke-static {p2}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$2300(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;)Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-object p0
.end method

.method public setTouchSlotEnable(Z)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;
    .registers 3

    .line 370
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    # setter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->touchSlotEnable:Z
    invoke-static {v0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$3902(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Z)Z

    return-object p0
.end method

.method public setVerticalCentre(Z)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;
    .registers 3

    .line 153
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    # setter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mIsVerticalCentre:Z
    invoke-static {v0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$1102(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Z)Z

    return-object p0
.end method

.method public showSelector(Z)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;
    .registers 3

    .line 358
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    # invokes: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->showSelector(Z)V
    invoke-static {v0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$3800(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;Z)V

    return-object p0
.end method

.method public updateSelectorBottomPadding(I)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;
    .registers 3

    .line 148
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->dimenSize(I)I

    move-result p1

    # setter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectorPaddingBottom:I
    invoke-static {v0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$902(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;I)I

    return-object p0
.end method

.method public updateSelectorTopPadding(I)Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;
    .registers 3

    .line 143
    iget-object v0, p0, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->letterSelector:Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout$LetterSelectorConfig;->dimenSize(I)I

    move-result p1

    # setter for: Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->mSelectorPaddingTop:I
    invoke-static {v0, p1}, Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;->access$802(Lcom/transsion/widgetslib/view/letter/LetterSelectorLayout;I)I

    return-object p0
.end method
