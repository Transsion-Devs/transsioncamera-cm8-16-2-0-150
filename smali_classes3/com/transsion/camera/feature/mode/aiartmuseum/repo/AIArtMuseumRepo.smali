.class public Lcom/transsion/camera/feature/mode/aiartmuseum/repo/AIArtMuseumRepo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final mEffectTitleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mEffectValueTitleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mWatermarkDescriptionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 57
    new-instance v0, Lcom/transsion/camera/feature/mode/aiartmuseum/repo/AIArtMuseumRepo$1;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/repo/AIArtMuseumRepo$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/repo/AIArtMuseumRepo;->mWatermarkDescriptionMap:Ljava/util/Map;

    .line 93
    new-instance v0, Lcom/transsion/camera/feature/mode/aiartmuseum/repo/AIArtMuseumRepo$2;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/repo/AIArtMuseumRepo$2;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/repo/AIArtMuseumRepo;->mEffectTitleMap:Ljava/util/Map;

    .line 101
    new-instance v0, Lcom/transsion/camera/feature/mode/aiartmuseum/repo/AIArtMuseumRepo$3;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/repo/AIArtMuseumRepo$3;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/repo/AIArtMuseumRepo;->mEffectValueTitleMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRequestTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 155
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 151
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_65

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_65

    .line 155
    :cond_12
    sget-object v1, Lcom/transsion/camera/feature/mode/aiartmuseum/repo/AIArtMuseumRepo;->mEffectTitleMap:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 156
    sget-object v1, Lcom/transsion/camera/feature/mode/aiartmuseum/repo/AIArtMuseumRepo;->mEffectValueTitleMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p0, :cond_5c

    .line 158
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_5c

    if-eqz p1, :cond_5c

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_33

    goto :goto_5c

    .line 162
    :cond_33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 159
    :cond_5c
    :goto_5c
    sget-object p0, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    sget p1, Lcom/transsion/camera/feature/aiartmuseum/R$string;->ai_art_museum_mode_title:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 152
    :cond_65
    :goto_65
    sget-object p0, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    sget p1, Lcom/transsion/camera/feature/aiartmuseum/R$string;->ai_art_museum_mode_title:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getWatermarkDescription(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 138
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 139
    sget-object p0, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    sget v0, Lcom/transsion/camera/feature/aiartmuseum/R$string;->ai_art_museum_watermark:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 142
    :cond_f
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/repo/AIArtMuseumRepo;->mWatermarkDescriptionMap:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_30

    .line 143
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_25

    goto :goto_30

    .line 147
    :cond_25
    sget-object v0, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 144
    :cond_30
    :goto_30
    sget-object p0, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    sget v0, Lcom/transsion/camera/feature/aiartmuseum/R$string;->ai_art_museum_watermark:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
