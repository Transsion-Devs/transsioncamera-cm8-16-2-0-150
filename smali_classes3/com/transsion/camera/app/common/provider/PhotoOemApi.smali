.class public abstract Lcom/transsion/camera/app/common/provider/PhotoOemApi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/provider/PhotoOemApi$Type;
    }
.end annotation


# direct methods
.method public static getAuthority(Landroid/content/Context;Lcom/transsion/camera/app/common/provider/PhotoOemApi$Type;)Ljava/lang/String;
    .registers 5

    .line 118
    sget-object v0, Lcom/transsion/camera/app/common/provider/PhotoOemApi$Type;->LOW_QUALITY:Lcom/transsion/camera/app/common/provider/PhotoOemApi$Type;

    const-string v1, "string"

    if-ne p1, v0, :cond_19

    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "low_quality_provider_authority"

    .line 120
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 119
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 122
    :cond_19
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "provider_authority"

    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 122
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getBaseBuilder(Landroid/content/Context;)Landroid/net/Uri$Builder;
    .registers 2

    .line 104
    sget-object v0, Lcom/transsion/camera/app/common/provider/PhotoOemApi$Type;->PROCESSING:Lcom/transsion/camera/app/common/provider/PhotoOemApi$Type;

    invoke-static {p0, v0}, Lcom/transsion/camera/app/common/provider/PhotoOemApi;->getBaseBuilder(Landroid/content/Context;Lcom/transsion/camera/app/common/provider/PhotoOemApi$Type;)Landroid/net/Uri$Builder;

    move-result-object p0

    return-object p0
.end method

.method private static getBaseBuilder(Landroid/content/Context;Lcom/transsion/camera/app/common/provider/PhotoOemApi$Type;)Landroid/net/Uri$Builder;
    .registers 3

    .line 108
    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/provider/PhotoOemApi;->getAuthority(Landroid/content/Context;Lcom/transsion/camera/app/common/provider/PhotoOemApi$Type;)Ljava/lang/String;

    move-result-object p0

    .line 109
    new-instance p1, Landroid/net/Uri$Builder;

    invoke-direct {p1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v0, "content"

    .line 110
    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 111
    invoke-virtual {p1, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static getQueryLowQualityUri(Landroid/content/Context;J)Landroid/net/Uri;
    .registers 4

    .line 97
    sget-object v0, Lcom/transsion/camera/app/common/provider/PhotoOemApi$Type;->LOW_QUALITY:Lcom/transsion/camera/app/common/provider/PhotoOemApi$Type;

    invoke-static {p0, v0}, Lcom/transsion/camera/app/common/provider/PhotoOemApi;->getBaseBuilder(Landroid/content/Context;Lcom/transsion/camera/app/common/provider/PhotoOemApi$Type;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "low"

    .line 98
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 99
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 100
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getQueryProcessingUri(Landroid/content/Context;J)Landroid/net/Uri;
    .registers 4

    .line 84
    invoke-static {p0}, Lcom/transsion/camera/app/common/provider/PhotoOemApi;->getBaseBuilder(Landroid/content/Context;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "processing"

    .line 85
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 86
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 87
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
