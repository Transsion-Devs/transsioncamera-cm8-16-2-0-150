.class final Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic$gson$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic$gson$2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic$gson$2;

    invoke-direct {v0}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic$gson$2;-><init>()V

    sput-object v0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic$gson$2;->INSTANCE:Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic$gson$2;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/google/gson/Gson;
    .registers 1

    .line 33
    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    .line 33
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic$gson$2;->invoke()Lcom/google/gson/Gson;

    move-result-object p0

    return-object p0
.end method
