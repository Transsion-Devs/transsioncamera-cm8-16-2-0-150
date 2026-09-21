.class public final Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Tab"
.end annotation


# instance fields
.field private mContentDesc:Ljava/lang/CharSequence;

.field private mFeatureName:Ljava/lang/String;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIsShowSellingPoint:Ljava/lang/Boolean;

.field mParent:Lcom/transsion/camera/app/ui/widget/TabLayout;

.field private mPosition:I

.field private mTag:Ljava/lang/Object;

.field private mText:Ljava/lang/CharSequence;

.field mView:Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1062
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1055
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mIsShowSellingPoint:Ljava/lang/Boolean;

    const/4 v0, -0x1

    .line 1056
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mPosition:I

    return-void
.end method


# virtual methods
.method public getContentDescription()Ljava/lang/CharSequence;
    .registers 1

    .line 1291
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mContentDesc:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getFeatureName()Ljava/lang/String;
    .registers 1

    .line 1128
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mFeatureName:Ljava/lang/String;

    return-object p0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 1096
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getIsShowSellingPoint()Z
    .registers 1

    .line 1124
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mIsShowSellingPoint:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getPosition()I
    .registers 1

    .line 1106
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mPosition:I

    return p0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 1

    .line 1120
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getView()Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;
    .registers 1

    .line 1074
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mView:Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    return-object p0
.end method

.method public isSelected()Z
    .registers 2

    .line 1237
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mParent:Lcom/transsion/camera/app/ui/widget/TabLayout;

    if-eqz v0, :cond_10

    .line 1240
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getSelectedTabPosition()I

    move-result v0

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mPosition:I

    if-ne v0, p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0

    .line 1238
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tab not attached to a TabLayout"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method reset()V
    .registers 2

    const/4 v0, 0x0

    .line 1301
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mParent:Lcom/transsion/camera/app/ui/widget/TabLayout;

    .line 1302
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mView:Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    .line 1303
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mTag:Ljava/lang/Object;

    .line 1304
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1305
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mText:Ljava/lang/CharSequence;

    .line 1306
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mContentDesc:Ljava/lang/CharSequence;

    const/4 v0, -0x1

    .line 1307
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mPosition:I

    return-void
.end method

.method select(ZZ)V
    .registers 4

    .line 1227
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mParent:Lcom/transsion/camera/app/ui/widget/TabLayout;

    if-eqz v0, :cond_8

    .line 1230
    invoke-static {v0, p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/TabLayout;->-$$Nest$mselectTab(Lcom/transsion/camera/app/ui/widget/TabLayout;Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;ZZ)V

    return-void

    .line 1228
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Tab not attached to a TabLayout"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;
    .registers 2

    .line 1271
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mContentDesc:Ljava/lang/CharSequence;

    .line 1272
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->updateView()V

    return-object p0
.end method

.method public setContentDescriptionWithoutUpdate(Ljava/lang/CharSequence;)Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;
    .registers 2

    .line 1278
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mContentDesc:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setFeatureName(Ljava/lang/String;)Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;
    .registers 2

    .line 1198
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mFeatureName:Ljava/lang/String;

    .line 1199
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->updateView()V

    return-object p0
.end method

.method public setFeatureNameWithoutUpdate(Ljava/lang/String;)Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;
    .registers 2

    .line 1204
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mFeatureName:Ljava/lang/String;

    return-object p0
.end method

.method setPosition(I)V
    .registers 2

    .line 1110
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mPosition:I

    return-void
.end method

.method public setShowPointIcon(Z)Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;
    .registers 3

    .line 1185
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mIsShowSellingPoint:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p1, :cond_11

    .line 1186
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mIsShowSellingPoint:Ljava/lang/Boolean;

    .line 1187
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->updateView()V

    :cond_11
    return-object p0
.end method

.method public setShowPointIconWithoutUpdate(Z)Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;
    .registers 2

    .line 1193
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mIsShowSellingPoint:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;
    .registers 2

    .line 1173
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mText:Ljava/lang/CharSequence;

    .line 1174
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->updateView()V

    return-object p0
.end method

.method public setTextWithoutUpdate(Ljava/lang/CharSequence;)Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;
    .registers 2

    .line 1180
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public updateView()V
    .registers 1

    .line 1295
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mView:Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    if-eqz p0, :cond_7

    .line 1296
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->update()V

    :cond_7
    return-void
.end method
