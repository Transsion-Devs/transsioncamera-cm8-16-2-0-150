.class public final Lcom/imaging/libwatermark/ai_art/AIArtConstantKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EXIF_SCENE_TYPE_AI_ART:Ljava/lang/String; = "30"

.field private static final TEMP_DIR:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 6
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/gallery20/base/base_app/BaseSdkKt;->getApp()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "tmp/ai_art/"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/imaging/libwatermark/ai_art/AIArtConstantKt;->TEMP_DIR:Ljava/io/File;

    return-void
.end method

.method public static final getTEMP_DIR()Ljava/io/File;
    .registers 1

    .line 6
    sget-object v0, Lcom/imaging/libwatermark/ai_art/AIArtConstantKt;->TEMP_DIR:Ljava/io/File;

    return-object v0
.end method
