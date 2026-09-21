.class public Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;


# instance fields
.field private final mTranThubCloudEngineCallbackWrapper:Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper;

.field private final mTranThubTrancareCallbackWrapper:Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper;


# direct methods
.method public static synthetic $r8$lambda$3_958nW4JM9AB6n06Sn2sOH6O2c(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager;->lambda$getAsLongArrayInternal$27(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$4ltDcXDVuR9WRsOe6Y2t_ZTD6UU(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager;->lambda$getAsBooleanArrayInternal$26(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$54qB63ZfLE80C4OTFslnDMdfMZI(Ljava/lang/String;Z)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager;->lambda$feedBackInternal$35(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$6KkJrwOXwjOpfocN7Ij7_wHfEnU(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/Object;
    .registers 4

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager;->lambda$putAsLongInternal$31(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$6n1RbYj7XJS6-Xmi2oeiuIUXbqQ(Ljava/lang/String;Ljava/lang/String;[Z)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager;->lambda$putAsBooleanArrayInternal$33(Ljava/lang/String;Ljava/lang/String;[Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Ax5Zu9igg6tUzO0oTd9BEYlFucM(Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager;Ljava/lang/String;Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;)Ljava/lang/Object;
    .registers 3

    .line 310
    iget-object p0, p0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager;->mTranThubCloudEngineCallbackWrapper:Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper;

    .line 310
    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper;->unregCloudEngineCallback(Ljava/lang/String;Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Cfu77h5phNICv4y0l0hx8raUgAA(Ljava/lang/String;Ljava/lang/String;ZJ)Ljava/lang/Object;
    .registers 5

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager;->lambda$getAsLongDefInternal$24(Ljava/lang/String;Ljava/lang/String;ZJ)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Cm_kI-ExYAhZ0nUM3yiE8mzPk2o(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager;->lambda$putAsStringArrayInternal$32(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$CscIX11O2vG5Q3uNPNwBbFtHO60(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager;->lambda$putAsBooleanInternal$30(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$FLQXQt6l1mPgNkMTbZr5P4YZTYI(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager;->lambda$getAsStringArrayInternal$25(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$HjMj60AYymyljBA2BZgglUdDtfk(Ljava/lang/String;Ljava/lang/String;[J)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager;->lambda$putAsLongArrayInternal$34(Ljava/lang/String;Ljava/lang/String;[J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$K1rCWQYMCAu1G1YsOZ6BIwoYVnE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager;->lambda$putAsStringInternal$29(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Kfmv-mOzClHGRrK-a2c77py_sn8(Ljava/lang/String;)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager;->lambda$getDefaultFilePathInternal$13(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LSzj2TdO4bPQBq7JWvSlQRUyOnI(Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager;Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;)Ljava/lang/Object;
    .registers 2

    .line 33
    iget-object p0, p0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager;->mTranThubTrancareCallbackWrapper:Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper;

    .line 33
    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper;->regTranLogCallback(Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic $r8$lambda$MFAvfXWVMFodV2dlnjIvqNrmf7I(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager;->lambda$getFileContentInternal$14(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$PcSP-tC-jHDXbotZLTsFmwxLbNE(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/Object;
    .registers 4

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager;->lambda$getAsBooleanDefInternal$22(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Pzuy_pMPNfcdKp_E2ZvSDitNFCM(Ljava/lang/String;Z)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager;->lambda$getEnabledInternal$10(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$RvG5PKhokgoKHhxvluna6Vvb6lE(JLjava/lang/String;ILjava/util/ArrayList;Landroid/os/Bundle;)Ljava/lang/Object;
    .registers 6

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager;->lambda$serverLogInternal$6(JLjava/lang/String;ILjava/util/ArrayList;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$SI5AMh7QZBIz1gjQuZzCgXKs3Y4(JLjava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager;->lambda$serverLogInternal$9(JLjava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$SfGRoXnfIuHOQxi_rxCunJpUEbA(ILjava/lang/String;ILandroid/os/Bundle;)Ljava/lang/Object;
    .registers 4

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager;->lambda$serverLogInternal$4(ILjava/lang/String;ILandroid/os/Bundle;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$U1rK_YcgYI6tzupnHEXFnGcHrE4(Ljava/lang/String;)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager;->lambda$getFilePathInternal$12(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$V9zT11GCemf-vBT2kBhoYv1KcyU(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager;->lambda$getAsLongInternal$23(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$b3RGZ0QljTJHgpoE_nkfIJ7qzOA(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager;->lambda$getEnabledAsNameInternal$11(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$b56yYvsQTQsK8jJfU9FbVfBEzFI(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager;->lambda$getAsBooleanInternal$21(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bkHXdzANv3YQ-KLEXOXfjdRAcbE(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager;->lambda$getAsStringInternal$19(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dun_EYukj9mX5sJD38pD0Y46RSM(Ljava/lang/String;)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager;->lambda$getDefaultConfigInternal$16(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$e6UeJHxKu_XG-Y8Oc2GHyO665WQ(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/Object;
    .registers 4

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager;->lambda$getAsStringDefInternal$20(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$eRS2gVjm3jGrglbXdMhN5FGDr1A(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager;->lambda$putConfigInternal$28(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kLjF4hFXgu2iM4wWYwVOZPY9lG0(ILjava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager;->lambda$serverLogInternal$8(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$mIN8BINUvr5WjdRqweiOox2zJK0(I)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager;->lambda$appRequestInternal$2(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$mPMQbNpsoX0fZciJ8XTi5tKuqgw(Ljava/lang/String;)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager;->lambda$getConfigInternal$17(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$mgRAuqMt1ZgHtUfXDamOGKs1Ri8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager;->lambda$getDefaultFileContentInternal$15(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$obI3mOOLi7l1NNfmt1wKFkmPubw(ILjava/lang/String;ILjava/util/ArrayList;Landroid/os/Bundle;)Ljava/lang/Object;
    .registers 5

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager;->lambda$serverLogInternal$7(ILjava/lang/String;ILjava/util/ArrayList;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qqXBRDeqlSCaenCYP0LodMmlZ7g(JLjava/lang/String;ILandroid/os/Bundle;)Ljava/lang/Object;
    .registers 5

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager;->lambda$serverLogInternal$5(JLjava/lang/String;ILandroid/os/Bundle;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rQJZbFCg2VoRqjeOLO5xn--OQOY(J)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager;->lambda$isEnabledInternal$3(J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xTDvZo7EqhB3pe0Jha_vpmZPuak(Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager;Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;)Ljava/lang/Object;
    .registers 2

    .line 41
    iget-object p0, p0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager;->mTranThubTrancareCallbackWrapper:Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper;

    .line 41
    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper;->unRegTranLogCallback(Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic $r8$lambda$yztaUkF6z7lEWQe-kJG4GG9WFYY(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager;->lambda$getConfigStaticInternal$18(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$z1txX81QPgeYwZE8Mjq7R_nkSPE(Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;)Ljava/lang/Object;
    .registers 4

    .line 302
    iget-object p0, p0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager;->mTranThubCloudEngineCallbackWrapper:Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper;

    .line 302
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper;->regCloudEngineCallback(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper;

    invoke-direct {v0}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager;->mTranThubTrancareCallbackWrapper:Lcom/transsion/hubsdk/core/trancare/TranThubTrancareCallbackWrapper;

    .line 27
    new-instance v0, Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper;

    invoke-direct {v0}, Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager;->mTranThubCloudEngineCallbackWrapper:Lcom/transsion/hubsdk/core/trancare/TranThubCloudEngineCallbackWrapper;

    return-void
.end method

.method private static synthetic lambda$appRequestInternal$2(I)Ljava/lang/Object;
    .registers 1

    .line 49
    invoke-static {p0}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->appRequest(I)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$feedBackInternal$35(Ljava/lang/String;Z)Ljava/lang/Object;
    .registers 2

    .line 294
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->feedBack(Ljava/lang/String;Z)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$getAsBooleanArrayInternal$26(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;
    .registers 3

    .line 224
    invoke-static {p0, p1, p2}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->getAsBooleanArray(Ljava/lang/String;Ljava/lang/String;Z)[Z

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getAsBooleanDefInternal$22(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/Object;
    .registers 4

    .line 196
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->getAsBooleanDef(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getAsBooleanInternal$21(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;
    .registers 3

    .line 189
    invoke-static {p0, p1, p2}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->getAsBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getAsLongArrayInternal$27(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;
    .registers 3

    .line 231
    invoke-static {p0, p1, p2}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->getAsLongArray(Ljava/lang/String;Ljava/lang/String;Z)[J

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getAsLongDefInternal$24(Ljava/lang/String;Ljava/lang/String;ZJ)Ljava/lang/Object;
    .registers 5

    .line 210
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->getAsLongDef(Ljava/lang/String;Ljava/lang/String;ZJ)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getAsLongInternal$23(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;
    .registers 3

    .line 203
    invoke-static {p0, p1, p2}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->getAsLong(Ljava/lang/String;Ljava/lang/String;Z)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getAsStringArrayInternal$25(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;
    .registers 3

    .line 217
    invoke-static {p0, p1, p2}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->getAsStringArray(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getAsStringDefInternal$20(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/Object;
    .registers 4

    .line 182
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->getAsStringDef(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getAsStringInternal$19(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;
    .registers 3

    .line 175
    invoke-static {p0, p1, p2}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->getAsString(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getConfigInternal$17(Ljava/lang/String;)Ljava/lang/Object;
    .registers 1

    .line 161
    invoke-static {p0}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getConfigStaticInternal$18(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 168
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->getConfigStatic(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getDefaultConfigInternal$16(Ljava/lang/String;)Ljava/lang/Object;
    .registers 1

    .line 154
    invoke-static {p0}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->getDefaultConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getDefaultFileContentInternal$15(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 147
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->getDefaultFileContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getDefaultFilePathInternal$13(Ljava/lang/String;)Ljava/lang/Object;
    .registers 1

    .line 133
    invoke-static {p0}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->getDefaultFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getEnabledAsNameInternal$11(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;
    .registers 3

    .line 119
    invoke-static {p0, p1, p2}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->getEnabledAsName(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getEnabledInternal$10(Ljava/lang/String;Z)Ljava/lang/Object;
    .registers 2

    .line 112
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->getEnabled(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getFileContentInternal$14(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 140
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->getFileContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getFilePathInternal$12(Ljava/lang/String;)Ljava/lang/Object;
    .registers 1

    .line 126
    invoke-static {p0}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$isEnabledInternal$3(J)Ljava/lang/Object;
    .registers 2

    .line 57
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->isEnabled(J)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$putAsBooleanArrayInternal$33(Ljava/lang/String;Ljava/lang/String;[Z)Ljava/lang/Object;
    .registers 3

    .line 278
    invoke-static {p0, p1, p2}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->putAsBooleanArray(Ljava/lang/String;Ljava/lang/String;[Z)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$putAsBooleanInternal$30(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;
    .registers 3

    .line 254
    invoke-static {p0, p1, p2}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->putAsBoolean(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$putAsLongArrayInternal$34(Ljava/lang/String;Ljava/lang/String;[J)Ljava/lang/Object;
    .registers 3

    .line 286
    invoke-static {p0, p1, p2}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->putAsLongArray(Ljava/lang/String;Ljava/lang/String;[J)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$putAsLongInternal$31(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/Object;
    .registers 4

    .line 262
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->putAsLong(Ljava/lang/String;Ljava/lang/String;J)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$putAsStringArrayInternal$32(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 270
    invoke-static {p0, p1, p2}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->putAsStringArray(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$putAsStringInternal$29(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 246
    invoke-static {p0, p1, p2}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->putAsString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$putConfigInternal$28(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 238
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->putConfig(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$serverLogInternal$4(ILjava/lang/String;ILandroid/os/Bundle;)Ljava/lang/Object;
    .registers 4

    .line 64
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->serverLog(ILjava/lang/String;ILandroid/os/Bundle;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$serverLogInternal$5(JLjava/lang/String;ILandroid/os/Bundle;)Ljava/lang/Object;
    .registers 5

    .line 72
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0, p2, p3, p4}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->serverLog(Ljava/lang/Long;Ljava/lang/String;ILandroid/os/Bundle;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$serverLogInternal$6(JLjava/lang/String;ILjava/util/ArrayList;Landroid/os/Bundle;)Ljava/lang/Object;
    .registers 6

    .line 80
    invoke-static/range {p0 .. p5}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->serverLog(JLjava/lang/String;ILjava/util/ArrayList;Landroid/os/Bundle;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$serverLogInternal$7(ILjava/lang/String;ILjava/util/ArrayList;Landroid/os/Bundle;)Ljava/lang/Object;
    .registers 5

    .line 88
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->serverLog(ILjava/lang/String;ILjava/util/ArrayList;Landroid/os/Bundle;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$serverLogInternal$8(ILjava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 96
    invoke-static {p0, p1}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->serverLog(ILjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$serverLogInternal$9(JLjava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 104
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/transsion/hubsdk/trancare/trancare/TranTrancareManager;->serverLog(Ljava/lang/Long;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public appRequestInternal(I)V
    .registers 3

    .line 48
    new-instance p0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda16;

    invoke-direct {v0, p1}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda16;-><init>(I)V

    const-string p1, "trancare"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public feedBackInternal(Ljava/lang/String;Z)V
    .registers 4

    .line 293
    new-instance p0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1, p2}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;Z)V

    const-string p1, "trancare"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public getAsBooleanArrayInternal(Ljava/lang/String;Ljava/lang/String;Z)[Z
    .registers 5

    .line 223
    new-instance p0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1, p2, p3}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda10;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p1, "trancare"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    return-object p0
.end method

.method public getAsBooleanDefInternal(Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .registers 6

    .line 195
    new-instance p0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda22;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda22;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string p1, "trancare"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getAsBooleanInternal(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 5

    .line 188
    new-instance p0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda34;

    invoke-direct {v0, p1, p2, p3}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda34;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p1, "trancare"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getAsLongArrayInternal(Ljava/lang/String;Ljava/lang/String;Z)[J
    .registers 5

    .line 230
    new-instance p0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2, p3}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p1, "trancare"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    return-object p0
.end method

.method public getAsLongDefInternal(Ljava/lang/String;Ljava/lang/String;ZJ)J
    .registers 12

    .line 209
    new-instance p0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda28;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda28;-><init>(Ljava/lang/String;Ljava/lang/String;ZJ)V

    const-string p1, "trancare"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public getAsLongInternal(Ljava/lang/String;Ljava/lang/String;Z)J
    .registers 5

    .line 202
    new-instance p0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda35;

    invoke-direct {v0, p1, p2, p3}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda35;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p1, "trancare"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public getAsStringArrayInternal(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;
    .registers 5

    .line 216
    new-instance p0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1, p2, p3}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p1, "trancare"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getAsStringDefInternal(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 181
    new-instance p0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda20;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda20;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    const-string p1, "trancare"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getAsStringInternal(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 5

    .line 174
    new-instance p0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda15;

    invoke-direct {v0, p1, p2, p3}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda15;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p1, "trancare"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getConfigInternal(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 160
    new-instance p0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda23;

    invoke-direct {v0, p1}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda23;-><init>(Ljava/lang/String;)V

    const-string p1, "trancare"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getConfigStaticInternal(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 167
    new-instance p0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda37;

    invoke-direct {v0, p1, p2}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda37;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, "trancare"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getDefaultConfigInternal(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 153
    new-instance p0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda8;-><init>(Ljava/lang/String;)V

    const-string p1, "trancare"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getDefaultFileContentInternal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 146
    new-instance p0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda31;

    invoke-direct {v0, p1, p2}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda31;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "trancare"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getDefaultFilePathInternal(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 132
    new-instance p0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda13;

    invoke-direct {v0, p1}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda13;-><init>(Ljava/lang/String;)V

    const-string p1, "trancare"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getEnabledAsNameInternal(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 5

    .line 118
    new-instance p0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda21;

    invoke-direct {v0, p1, p2, p3}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda21;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p1, "trancare"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getEnabledInternal(Ljava/lang/String;Z)Z
    .registers 4

    .line 111
    new-instance p0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda29;

    invoke-direct {v0, p1, p2}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda29;-><init>(Ljava/lang/String;Z)V

    const-string p1, "trancare"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getFileContentInternal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 139
    new-instance p0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda17;

    invoke-direct {v0, p1, p2}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda17;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "trancare"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getFilePathInternal(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 125
    new-instance p0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda36;

    invoke-direct {v0, p1}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda36;-><init>(Ljava/lang/String;)V

    const-string p1, "trancare"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public isEnabledInternal(J)Z
    .registers 4

    .line 56
    new-instance p0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda12;

    invoke-direct {v0, p1, p2}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda12;-><init>(J)V

    const-string p1, "trancare"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public putAsBooleanArrayInternal(Ljava/lang/String;Ljava/lang/String;[Z)V
    .registers 5

    .line 277
    new-instance p0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda26;

    invoke-direct {v0, p1, p2, p3}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda26;-><init>(Ljava/lang/String;Ljava/lang/String;[Z)V

    const-string p1, "trancare"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public putAsBooleanInternal(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    .line 253
    new-instance p0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2, p3}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p1, "trancare"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public putAsLongArrayInternal(Ljava/lang/String;Ljava/lang/String;[J)V
    .registers 5

    .line 285
    new-instance p0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1, p2, p3}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;Ljava/lang/String;[J)V

    const-string p1, "trancare"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public putAsLongInternal(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 6

    .line 261
    new-instance p0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    const-string p1, "trancare"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public putAsStringArrayInternal(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5

    .line 269
    new-instance p0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda27;

    invoke-direct {v0, p1, p2, p3}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda27;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const-string p1, "trancare"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public putAsStringInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 245
    new-instance p0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda30;

    invoke-direct {v0, p1, p2, p3}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda30;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "trancare"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public putConfigInternal(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 237
    new-instance p0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "trancare"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public regCloudEngineCallbackInternal(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;)V
    .registers 6

    .line 301
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda25;-><init>(Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;)V

    const-string p0, "trancare"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public regTranLogCallbackInternal(Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;)V
    .registers 4

    .line 32
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda19;-><init>(Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager;Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;)V

    const-string p0, "trancare"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public serverLogInternal(ILjava/lang/String;)V
    .registers 4

    .line 95
    new-instance p0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda24;

    invoke-direct {v0, p1, p2}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda24;-><init>(ILjava/lang/String;)V

    const-string p1, "trancare"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public serverLogInternal(ILjava/lang/String;ILandroid/os/Bundle;)V
    .registers 6

    .line 63
    new-instance p0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda6;-><init>(ILjava/lang/String;ILandroid/os/Bundle;)V

    const-string p1, "trancare"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public serverLogInternal(ILjava/lang/String;ILjava/util/ArrayList;Landroid/os/Bundle;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 87
    new-instance p0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda11;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda11;-><init>(ILjava/lang/String;ILjava/util/ArrayList;Landroid/os/Bundle;)V

    const-string p1, "trancare"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public serverLogInternal(JLjava/lang/String;)V
    .registers 5

    .line 103
    new-instance p0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda33;

    invoke-direct {v0, p1, p2, p3}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda33;-><init>(JLjava/lang/String;)V

    const-string p1, "trancare"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public serverLogInternal(JLjava/lang/String;ILandroid/os/Bundle;)V
    .registers 12

    .line 71
    new-instance p0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda18;

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda18;-><init>(JLjava/lang/String;ILandroid/os/Bundle;)V

    const-string p1, "trancare"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public serverLogInternal(JLjava/lang/String;ILjava/util/ArrayList;Landroid/os/Bundle;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 79
    new-instance p0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda14;

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda14;-><init>(JLjava/lang/String;ILjava/util/ArrayList;Landroid/os/Bundle;)V

    const-string p1, "trancare"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public unregCloudEngineCallbackInternal(Ljava/lang/String;Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;)V
    .registers 5

    .line 309
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda9;-><init>(Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager;Ljava/lang/String;Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;)V

    const-string p0, "trancare"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public unregTranLogCallbackInternal(Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;)V
    .registers 4

    .line 40
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda32;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager$$ExternalSyntheticLambda32;-><init>(Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager;Lcom/transsion/hubsdk/api/trancare/TranTrancareCallback;)V

    const-string p0, "trancare"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method
