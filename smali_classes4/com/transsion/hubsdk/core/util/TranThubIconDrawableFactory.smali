.class public Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIconDrawableFactory:Lcom/transsion/hubsdk/util/TranIconDrawableFactory;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mIconDrawableFactory:Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    .line 14
    iput-object v0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mContext:Landroid/content/Context;

    .line 16
    invoke-static {}, Lcom/transsion/hubsdk/common/init/TranHubSdkManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mContext:Landroid/content/Context;

    if-nez v0, :cond_11

    return-void

    .line 20
    :cond_11
    new-instance v0, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    iget-object v1, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mIconDrawableFactory:Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    return-void
.end method


# virtual methods
.method public getBadgedIcon(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 97
    new-instance v0, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    invoke-direct {v0, p1}, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mIconDrawableFactory:Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    .line 99
    invoke-virtual {v0, p2}, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getBadgedIcon(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 115
    new-instance v0, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    invoke-direct {v0, p1}, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mIconDrawableFactory:Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    .line 117
    invoke-virtual {v0, p1, p2, p3}, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;->getBadgedIcon(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getBadgedIcon(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;
    .registers 6

    .line 106
    new-instance v0, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    invoke-direct {v0, p1}, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mIconDrawableFactory:Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    .line 108
    invoke-virtual {v0, p2, p3, p4}, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;->getBadgedIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getBadgedIcon(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;IZ)Landroid/graphics/drawable/Drawable;
    .registers 7

    move-object v0, p0

    .line 165
    new-instance p0, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;-><init>(Landroid/content/Context;)V

    iput-object p0, v0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mIconDrawableFactory:Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    .line 167
    invoke-virtual/range {p0 .. p5}, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;->getBadgedIcon(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 24
    iget-object p0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mIconDrawableFactory:Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 27
    :cond_6
    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getBadgedIcon(Landroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 41
    iget-object v0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mIconDrawableFactory:Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_d

    .line 42
    invoke-virtual {v0, p0, p1, p2}, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;->getBadgedIcon(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public getBadgedIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 33
    iget-object p0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mIconDrawableFactory:Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 36
    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;->getBadgedIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getBadgedIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;IZ)Landroid/graphics/drawable/Drawable;
    .registers 11

    .line 89
    iget-object v0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mIconDrawableFactory:Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    if-eqz v0, :cond_11

    iget-object v1, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_11

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 90
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;->getBadgedIcon(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public getGlobalThemedIcon(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 133
    iget-object v0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mIconDrawableFactory:Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    if-nez v0, :cond_b

    .line 134
    new-instance v0, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    invoke-direct {v0, p1}, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mIconDrawableFactory:Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    .line 136
    :cond_b
    iget-object p0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mIconDrawableFactory:Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;->getGlobalThemedIcon(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getGlobalThemedIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 141
    iget-object v0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mIconDrawableFactory:Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    if-nez v0, :cond_b

    .line 142
    new-instance v0, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    invoke-direct {v0, p1}, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mIconDrawableFactory:Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    .line 144
    :cond_b
    iget-object p0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mIconDrawableFactory:Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;->getGlobalThemedIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getGlobalThemedIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 149
    iget-object v0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mIconDrawableFactory:Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    if-nez v0, :cond_b

    .line 150
    new-instance v0, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    invoke-direct {v0, p1}, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mIconDrawableFactory:Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    .line 152
    :cond_b
    iget-object p0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mIconDrawableFactory:Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;->getGlobalThemedIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getGlobalThemedIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 157
    iget-object v0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mIconDrawableFactory:Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    if-nez v0, :cond_b

    .line 158
    new-instance v0, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    invoke-direct {v0, p1}, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mIconDrawableFactory:Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    .line 160
    :cond_b
    iget-object p0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mIconDrawableFactory:Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;->getGlobalThemedIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getGlobalThemedIcon(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 57
    iget-object v0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mIconDrawableFactory:Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_d

    .line 58
    invoke-virtual {v0, p0, p1}, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;->getGlobalThemedIcon(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public getGlobalThemedIcon(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 65
    iget-object v0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mIconDrawableFactory:Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_d

    .line 66
    invoke-virtual {v0, p0, p1, p2}, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;->getGlobalThemedIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public getGlobalThemedIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 73
    iget-object v0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mIconDrawableFactory:Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_d

    .line 74
    invoke-virtual {v0, p0, p1}, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;->getGlobalThemedIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public getGlobalThemedIcon(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 81
    iget-object v0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mIconDrawableFactory:Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_d

    .line 82
    invoke-virtual {v0, p0, p1, p2}, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;->getGlobalThemedIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public getUnbadgedIcon(Landroid/content/Context;ZLandroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .registers 6

    .line 124
    new-instance v0, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    invoke-direct {v0, p1}, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mIconDrawableFactory:Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    .line 126
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;->getUnbadgedIcon(Landroid/content/Context;ZLandroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getUnbadgedIcon(ZLandroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 49
    iget-object v0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mIconDrawableFactory:Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_d

    .line 50
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;->getUnbadgedIcon(Landroid/content/Context;ZLandroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method
