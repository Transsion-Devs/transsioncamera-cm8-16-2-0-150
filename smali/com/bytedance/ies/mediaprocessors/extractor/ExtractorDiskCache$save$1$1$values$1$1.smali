.class public final Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$save$1$1$values$1$1;
.super Lcom/bytedance/ies/mediaprocessors/extractor_jni/ByteArrayCallBack;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$save$1;->invoke()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $this_apply:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Landroid/content/ContentValues;)V
    .registers 2

    .line 197
    iput-object p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$save$1$1$values$1$1;->$this_apply:Landroid/content/ContentValues;

    .line 198
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/ByteArrayCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult([B)V
    .registers 3

    .line 200
    iget-object p0, p0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorDiskCache$save$1$1$values$1$1;->$this_apply:Landroid/content/ContentValues;

    if-eqz p1, :cond_5

    goto :goto_8

    :cond_5
    const/4 p1, 0x0

    new-array p1, p1, [B

    :goto_8
    const-string v0, "RESULT"

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    return-void
.end method
