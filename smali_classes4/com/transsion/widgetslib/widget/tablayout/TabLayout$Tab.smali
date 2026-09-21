.class public Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/widget/tablayout/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tab"
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1


# instance fields
.field private contentDesc:Ljava/lang/CharSequence;

.field private customView:Landroid/view/View;

.field private icon:Landroid/graphics/drawable/Drawable;

.field private labelVisibilityMode:I
    .annotation build Lcom/transsion/widgetslib/widget/tablayout/TabLayout$LabelVisibility;
    .end annotation
.end field

.field public parent:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

.field private position:I

.field private tag:Ljava/lang/Object;

.field private text:Ljava/lang/CharSequence;

.field public view:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1930
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 1916
    iput v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->position:I

    const/4 v0, 0x1

    .line 1919
    iput v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->labelVisibilityMode:I

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)Ljava/lang/CharSequence;
    .registers 1

    .line 1896
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->contentDesc:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)Ljava/lang/CharSequence;
    .registers 1

    .line 1896
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->text:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)I
    .registers 1

    .line 1896
    iget p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->labelVisibilityMode:I

    return p0
.end method


# virtual methods
.method public getBadge()Lcom/google/android/material/badge/BadgeDrawable;
    .registers 1

    .line 2133
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->view:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    # invokes: Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->getBadge()Lcom/google/android/material/badge/BadgeDrawable;
    invoke-static {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->access$700(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;)Lcom/google/android/material/badge/BadgeDrawable;

    move-result-object p0

    return-object p0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .registers 1

    .line 2241
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->view:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getCustomView()Landroid/view/View;
    .registers 1

    .line 1962
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->customView:Landroid/view/View;

    return-object p0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 2008
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getOrCreateBadge()Lcom/google/android/material/badge/BadgeDrawable;
    .registers 1

    .line 2116
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->view:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    # invokes: Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->getOrCreateBadge()Lcom/google/android/material/badge/BadgeDrawable;
    invoke-static {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->access$500(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;)Lcom/google/android/material/badge/BadgeDrawable;

    move-result-object p0

    return-object p0
.end method

.method public getPosition()I
    .registers 1

    .line 2018
    iget p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->position:I

    return p0
.end method

.method public getTabLabelVisibility()I
    .registers 1
    .annotation build Lcom/transsion/widgetslib/widget/tablayout/TabLayout$LabelVisibility;
    .end annotation

    .line 2174
    iget p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->labelVisibilityMode:I

    return p0
.end method

.method public getTag()Ljava/lang/Object;
    .registers 1

    .line 1939
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->tag:Ljava/lang/Object;

    return-object p0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 1

    .line 2032
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->text:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public isSelected()Z
    .registers 2

    .line 2191
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->parent:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    if-eqz v0, :cond_10

    .line 2194
    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getSelectedTabPosition()I

    move-result v0

    iget p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->position:I

    if-ne v0, p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0

    .line 2192
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tab not attached to a TabLayout"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeBadge()V
    .registers 1

    .line 2124
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->view:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    # invokes: Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->removeBadge()V
    invoke-static {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->access$600(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;)V

    return-void
.end method

.method reset()V
    .registers 3

    const/4 v0, 0x0

    .line 2251
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->parent:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    .line 2252
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->view:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    .line 2253
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->tag:Ljava/lang/Object;

    .line 2254
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->icon:Landroid/graphics/drawable/Drawable;

    .line 2255
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->text:Ljava/lang/CharSequence;

    .line 2256
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->contentDesc:Ljava/lang/CharSequence;

    const/4 v1, -0x1

    .line 2257
    iput v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->position:I

    .line 2258
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->customView:Landroid/view/View;

    return-void
.end method

.method public select()V
    .registers 2

    .line 2181
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->parent:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    if-eqz v0, :cond_8

    .line 2184
    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->selectTab(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V

    return-void

    .line 2182
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tab not attached to a TabLayout"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setContentDescription(I)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;
    .registers 3

    .line 2208
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->parent:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    if-eqz v0, :cond_11

    .line 2211
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->setContentDescription(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    move-result-object p0

    return-object p0

    .line 2209
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Tab not attached to a TabLayout"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;
    .registers 2

    .line 2225
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->contentDesc:Ljava/lang/CharSequence;

    .line 2226
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->updateView()V

    return-object p0
.end method

.method public setCustomView(I)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;
    .registers 5

    .line 1997
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->view:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1998
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->view:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->setCustomView(Landroid/view/View;)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    move-result-object p0

    return-object p0
.end method

.method public setCustomView(Landroid/view/View;)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;
    .registers 2

    .line 1978
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->customView:Landroid/view/View;

    .line 1979
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->updateView()V

    return-object p0
.end method

.method public setIcon(I)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;
    .registers 3

    .line 2065
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->parent:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    if-eqz v0, :cond_11

    .line 2070
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    move-result-object p0

    return-object p0

    .line 2066
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Tab not attached to a TabLayout"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;
    .registers 5

    .line 2043
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->icon:Landroid/graphics/drawable/Drawable;

    .line 2044
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->parent:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    iget v0, p1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabGravity:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    iget v0, p1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_11

    .line 2045
    :cond_e
    invoke-virtual {p1, v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->updateTabViews(Z)V

    .line 2047
    :cond_11
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->updateView()V

    .line 2048
    sget-boolean p1, Lcom/google/android/material/badge/BadgeUtils;->USE_COMPAT_PARENT:Z

    if-eqz p1, :cond_31

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->view:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    .line 2049
    # invokes: Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->hasBadgeDrawable()Z
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->access$300(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;)Z

    move-result p1

    if-eqz p1, :cond_31

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->view:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    .line 2050
    # getter for: Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->access$400(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;)Lcom/google/android/material/badge/BadgeDrawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_31

    .line 2052
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->view:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_31
    return-object p0
.end method

.method setPosition(I)V
    .registers 2

    .line 2022
    iput p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->position:I

    return-void
.end method

.method public setTabLabelVisibility(I)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;
    .registers 5
    .param p1    # I
        .annotation build Lcom/transsion/widgetslib/widget/tablayout/TabLayout$LabelVisibility;
        .end annotation
    .end param

    .line 2151
    iput p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->labelVisibilityMode:I

    .line 2152
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->parent:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    iget v0, p1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabGravity:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    iget v0, p1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_11

    .line 2153
    :cond_e
    invoke-virtual {p1, v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->updateTabViews(Z)V

    .line 2155
    :cond_11
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->updateView()V

    .line 2156
    sget-boolean p1, Lcom/google/android/material/badge/BadgeUtils;->USE_COMPAT_PARENT:Z

    if-eqz p1, :cond_31

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->view:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    .line 2157
    # invokes: Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->hasBadgeDrawable()Z
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->access$300(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;)Z

    move-result p1

    if-eqz p1, :cond_31

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->view:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    .line 2158
    # getter for: Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->access$400(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;)Lcom/google/android/material/badge/BadgeDrawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_31

    .line 2160
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->view:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_31
    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;
    .registers 2

    .line 1950
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->tag:Ljava/lang/Object;

    return-object p0
.end method

.method public setText(I)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;
    .registers 3

    .line 2102
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->parent:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    if-eqz v0, :cond_11

    .line 2105
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    move-result-object p0

    return-object p0

    .line 2103
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Tab not attached to a TabLayout"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setText(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;
    .registers 3

    .line 2082
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->contentDesc:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 2085
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->view:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2088
    :cond_13
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->text:Ljava/lang/CharSequence;

    .line 2089
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->updateView()V

    return-object p0
.end method

.method updateView()V
    .registers 1

    .line 2245
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->view:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    if-eqz p0, :cond_7

    .line 2246
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->update()V

    :cond_7
    return-void
.end method
