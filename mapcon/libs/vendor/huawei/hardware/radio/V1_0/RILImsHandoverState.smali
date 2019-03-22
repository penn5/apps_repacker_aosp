.class public final Lvendor/huawei/hardware/radio/V1_0/RILImsHandoverState;
.super Ljava/lang/Object;
.source "RILImsHandoverState.java"


# static fields
.field public static final IMS_HANDOVER_STATE_CANCEL:I = 0x3

.field public static final IMS_HANDOVER_STATE_COMPLETE_FAIL:I = 0x2

.field public static final IMS_HANDOVER_STATE_COMPLETE_SUCCESS:I = 0x1

.field public static final IMS_HANDOVER_STATE_NOT_TRIGGERED:I = 0x4

.field public static final IMS_HANDOVER_STATE_START:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 5
    .param p0, "o"    # I

    .prologue
    .line 30
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 32
    .local v0, "flipped":I
    and-int/lit8 v2, p0, 0x0

    if-nez v2, :cond_11

    .line 33
    const-string/jumbo v2, "IMS_HANDOVER_STATE_START"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    const/4 v0, 0x0

    .line 36
    :cond_11
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1e

    .line 37
    const-string/jumbo v2, "IMS_HANDOVER_STATE_COMPLETE_SUCCESS"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    or-int/lit8 v0, v0, 0x1

    .line 40
    :cond_1e
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2b

    .line 41
    const-string/jumbo v2, "IMS_HANDOVER_STATE_COMPLETE_FAIL"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    or-int/lit8 v0, v0, 0x2

    .line 44
    :cond_2b
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_38

    .line 45
    const-string/jumbo v2, "IMS_HANDOVER_STATE_CANCEL"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    or-int/lit8 v0, v0, 0x3

    .line 48
    :cond_38
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_45

    .line 49
    const-string/jumbo v2, "IMS_HANDOVER_STATE_NOT_TRIGGERED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    or-int/lit8 v0, v0, 0x4

    .line 52
    :cond_45
    if-eq p0, v0, :cond_64

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    not-int v3, v0

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_64
    const-string/jumbo v2, " | "

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # I

    .prologue
    .line 11
    if-nez p0, :cond_6

    .line 12
    const-string/jumbo v0, "IMS_HANDOVER_STATE_START"

    return-object v0

    .line 14
    :cond_6
    const/4 v0, 0x1

    if-ne p0, v0, :cond_d

    .line 15
    const-string/jumbo v0, "IMS_HANDOVER_STATE_COMPLETE_SUCCESS"

    return-object v0

    .line 17
    :cond_d
    const/4 v0, 0x2

    if-ne p0, v0, :cond_14

    .line 18
    const-string/jumbo v0, "IMS_HANDOVER_STATE_COMPLETE_FAIL"

    return-object v0

    .line 20
    :cond_14
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1b

    .line 21
    const-string/jumbo v0, "IMS_HANDOVER_STATE_CANCEL"

    return-object v0

    .line 23
    :cond_1b
    const/4 v0, 0x4

    if-ne p0, v0, :cond_22

    .line 24
    const-string/jumbo v0, "IMS_HANDOVER_STATE_NOT_TRIGGERED"

    return-object v0

    .line 26
    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method