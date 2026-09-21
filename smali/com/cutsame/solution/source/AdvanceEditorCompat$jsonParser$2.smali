.class public final Lcom/cutsame/solution/source/AdvanceEditorCompat$jsonParser$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cutsame/solution/source/AdvanceEditorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/cutsame/solution/source/AdvanceEditorCompat$jsonParser$2;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/cutsame/solution/source/AdvanceEditorCompat$jsonParser$2;

    invoke-direct {v0}, Lcom/cutsame/solution/source/AdvanceEditorCompat$jsonParser$2;-><init>()V

    sput-object v0, Lcom/cutsame/solution/source/AdvanceEditorCompat$jsonParser$2;->INSTANCE:Lcom/cutsame/solution/source/AdvanceEditorCompat$jsonParser$2;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/google/gson/JsonParser;
    .registers 1

    .line 2
    new-instance p0, Lcom/google/gson/JsonParser;

    invoke-direct {p0}, Lcom/google/gson/JsonParser;-><init>()V

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/cutsame/solution/source/AdvanceEditorCompat$jsonParser$2;->invoke()Lcom/google/gson/JsonParser;

    move-result-object p0

    return-object p0
.end method
