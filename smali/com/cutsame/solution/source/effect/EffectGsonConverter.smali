.class public final Lcom/cutsame/solution/source/effect/EffectGsonConverter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IAndroidJsonConverter;


# static fields
.field public static final INSTANCE:Lcom/cutsame/solution/source/effect/EffectGsonConverter;

.field public static final gson:Lcom/google/gson/Gson;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/cutsame/solution/source/effect/EffectGsonConverter;

    invoke-direct {v0}, Lcom/cutsame/solution/source/effect/EffectGsonConverter;-><init>()V

    sput-object v0, Lcom/cutsame/solution/source/effect/EffectGsonConverter;->INSTANCE:Lcom/cutsame/solution/source/effect/EffectGsonConverter;

    .line 1
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/cutsame/solution/source/effect/EffectGsonConverter;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convertJsonToObj(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3

    const-string p0, "json"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "cls"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p0, Lcom/cutsame/solution/source/effect/EffectGsonConverter;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
