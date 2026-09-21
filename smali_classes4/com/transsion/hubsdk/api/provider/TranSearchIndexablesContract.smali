.class public Lcom/transsion/hubsdk/api/provider/TranSearchIndexablesContract;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/api/provider/TranSearchIndexablesContract$TranRawData;,
        Lcom/transsion/hubsdk/api/provider/TranSearchIndexablesContract$TranBaseColumns;
    }
.end annotation


# static fields
.field public static final INDEXABLES_RAW_COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 17

    .line 18
    const-string v15, "payload_type"

    const-string v16, "payload"

    const-string v1, "rank"

    const-string v2, "title"

    const-string v3, "summaryOn"

    const-string v4, "summaryOff"

    const-string v5, "entries"

    const-string v6, "keywords"

    const-string v7, "screenTitle"

    const-string v8, "className"

    const-string v9, "iconResId"

    const-string v10, "intentAction"

    const-string v11, "intentTargetPackage"

    const-string v12, "intentTargetClass"

    const-string v13, "key"

    const-string v14, "user_id"

    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/api/provider/TranSearchIndexablesContract;->INDEXABLES_RAW_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
