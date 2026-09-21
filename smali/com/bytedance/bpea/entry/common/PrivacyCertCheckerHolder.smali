.class public final Lcom/bytedance/bpea/entry/common/PrivacyCertCheckerHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/bytedance/bpea/entry/common/PrivacyCertCheckerHolder;

.field private static certChecker:Lcom/bytedance/bpea/basics/CertChecker;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 12
    new-instance v0, Lcom/bytedance/bpea/entry/common/PrivacyCertCheckerHolder;

    invoke-direct {v0}, Lcom/bytedance/bpea/entry/common/PrivacyCertCheckerHolder;-><init>()V

    sput-object v0, Lcom/bytedance/bpea/entry/common/PrivacyCertCheckerHolder;->INSTANCE:Lcom/bytedance/bpea/entry/common/PrivacyCertCheckerHolder;

    .line 25
    :try_start_7
    const-string v0, "com.bytedance.bpea.core.checker.CertCheckerProvider"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 26
    const-string v1, "INSTANCE"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 27
    const-string v2, "getInstance"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/4 v3, 0x0

    .line 28
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 29
    const-string v3, "CHECKER"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 30
    const-string v3, "getChecker"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3a

    check-cast v0, Lcom/bytedance/bpea/basics/CertChecker;

    sput-object v0, Lcom/bytedance/bpea/entry/common/PrivacyCertCheckerHolder;->certChecker:Lcom/bytedance/bpea/basics/CertChecker;

    goto :goto_42

    :cond_3a
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.bytedance.bpea.basics.CertChecker"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_42
    .catchall {:try_start_7 .. :try_end_42} :catchall_42

    .line 35
    :catchall_42
    :goto_42
    sget-object v0, Lcom/bytedance/bpea/entry/common/PrivacyCertCheckerHolder;->certChecker:Lcom/bytedance/bpea/basics/CertChecker;

    if-eqz v0, :cond_4e

    .line 36
    sget-object v0, Lcom/bytedance/bpea/basics/BPEALogUtil;->INSTANCE:Lcom/bytedance/bpea/basics/BPEALogUtil;

    const-string v1, "checker working"

    invoke-virtual {v0, v1}, Lcom/bytedance/bpea/basics/BPEALogUtil;->d(Ljava/lang/String;)V

    goto :goto_55

    .line 38
    :cond_4e
    sget-object v0, Lcom/bytedance/bpea/basics/BPEALogUtil;->INSTANCE:Lcom/bytedance/bpea/basics/BPEALogUtil;

    const-string v1, "checker not work"

    invoke-virtual {v0, v1}, Lcom/bytedance/bpea/basics/BPEALogUtil;->d(Ljava/lang/String;)V

    :goto_55
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final check(Lcom/bytedance/bpea/basics/Cert;Lcom/bytedance/bpea/basics/CertContext;)Lcom/bytedance/bpea/basics/CheckResult;
    .registers 3

    const-string p0, "certContext"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    sget-object p0, Lcom/bytedance/bpea/entry/common/PrivacyCertCheckerHolder;->certChecker:Lcom/bytedance/bpea/basics/CertChecker;

    if-eqz p0, :cond_e

    invoke-interface {p0, p1, p2}, Lcom/bytedance/bpea/basics/CertChecker;->check(Lcom/bytedance/bpea/basics/Cert;Lcom/bytedance/bpea/basics/CertContext;)Lcom/bytedance/bpea/basics/CheckResult;

    move-result-object p0

    return-object p0

    :cond_e
    const/4 p0, 0x0

    return-object p0
.end method
