.class public final Lcom/transsion/hubsdk/api/trancare/TranTrancareNative;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/api/trancare/TranTrancareNative$Singleton;
    }
.end annotation


# static fields
.field private static final SERVICE_EXCEPTION:Ljava/lang/String; = "service is Null"

.field private static final TAG:Ljava/lang/String; = "TranTrancareNative"

.field public static final TRANLOG_OP_ADD:I = 0x2

.field public static final TRANLOG_OP_DIV:I = 0x5

.field public static final TRANLOG_OP_MUL:I = 0x4

.field public static final TRANLOG_OP_NONE:I = 0x1

.field public static final TRANLOG_OP_SUB:I = 0x3

.field private static sAospService:Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareNative;

.field private static sThubService:Lcom/transsion/hubsdk/core/trancare/TranThubTrancareNative;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 22
    sget-object v0, Lcom/transsion/hubsdk/api/trancare/TranTrancareNative;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Lcom/transsion/hubsdk/core/trancare/TranThubTrancareNative;
    .registers 1

    .line 22
    sget-object v0, Lcom/transsion/hubsdk/api/trancare/TranTrancareNative;->sThubService:Lcom/transsion/hubsdk/core/trancare/TranThubTrancareNative;

    return-object v0
.end method

.method static synthetic access$102(Lcom/transsion/hubsdk/core/trancare/TranThubTrancareNative;)Lcom/transsion/hubsdk/core/trancare/TranThubTrancareNative;
    .registers 1

    .line 22
    sput-object p0, Lcom/transsion/hubsdk/api/trancare/TranTrancareNative;->sThubService:Lcom/transsion/hubsdk/core/trancare/TranThubTrancareNative;

    return-object p0
.end method

.method static synthetic access$200()Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareNative;
    .registers 1

    .line 22
    sget-object v0, Lcom/transsion/hubsdk/api/trancare/TranTrancareNative;->sAospService:Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareNative;

    return-object v0
.end method

.method static synthetic access$202(Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareNative;)Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareNative;
    .registers 1

    .line 22
    sput-object p0, Lcom/transsion/hubsdk/api/trancare/TranTrancareNative;->sAospService:Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareNative;

    return-object p0
.end method

.method public static localLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 47
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33121:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/trancare/TranTrancareNative$Singleton;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareNativeAdapter;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 51
    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareNativeAdapter;->localLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 49
    :cond_c
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "service is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static localLogImmediately(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 67
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33121:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/trancare/TranTrancareNative$Singleton;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareNativeAdapter;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 71
    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareNativeAdapter;->localLogImmediately(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 69
    :cond_c
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "service is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static localLogKeep(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 103
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33121:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/trancare/TranTrancareNative$Singleton;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareNativeAdapter;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 107
    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareNativeAdapter;->localLogKeep(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 105
    :cond_c
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "service is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static localLogKeepReplace(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 122
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/trancare/TranTrancareNative$Singleton;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareNativeAdapter;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 126
    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareNativeAdapter;->localLogKeepReplace(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 124
    :cond_c
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "service is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static localRaw(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 84
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33121:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/trancare/TranTrancareNative$Singleton;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareNativeAdapter;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 88
    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareNativeAdapter;->localRaw(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 86
    :cond_c
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "service is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setNvFloat(Ljava/lang/String;FI)V
    .registers 4

    .line 179
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33121:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/trancare/TranTrancareNative$Singleton;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareNativeAdapter;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 183
    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareNativeAdapter;->setNvFloat(Ljava/lang/String;FI)V

    return-void

    .line 181
    :cond_c
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "service is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setNvInt(Ljava/lang/String;II)V
    .registers 4

    .line 141
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33121:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/trancare/TranTrancareNative$Singleton;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareNativeAdapter;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 145
    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareNativeAdapter;->setNvInt(Ljava/lang/String;II)V

    return-void

    .line 143
    :cond_c
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "service is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setNvLong(Ljava/lang/String;JI)V
    .registers 5

    .line 160
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33121:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/trancare/TranTrancareNative$Singleton;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareNativeAdapter;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 164
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareNativeAdapter;->setNvLong(Ljava/lang/String;JI)V

    return-void

    .line 162
    :cond_c
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "service is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setNvString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 197
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33121:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/trancare/TranTrancareNative$Singleton;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareNativeAdapter;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 201
    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareNativeAdapter;->setNvString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 199
    :cond_c
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "service is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
