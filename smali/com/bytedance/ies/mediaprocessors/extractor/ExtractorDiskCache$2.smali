.class final Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/database/DatabaseErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache;-><init>(Landroid/content/Context;Lcom/bytedance/ies/mediaprocessors/extractor_jni/Config;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$2;

    invoke-direct {v0}, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$2;-><init>()V

    sput-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$2;->INSTANCE:Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$2;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    .line 60
    const-string p0, "ExtractorDiskCache"

    const-string p1, "DatabaseErrorHandler"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
